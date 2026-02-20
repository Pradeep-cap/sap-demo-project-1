using { RiskManagement1 as my } from '../db/schema.cds';

@path : '/service/RiskManagement1Service'
service RiskManagement1Service
{
    annotate Mitigations with @restrict :
    [
        { grant : [ '*' ], to : [ 'riskmanager' ] },
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] }
    ];

    annotate Risks with @restrict :
    [
        { grant : [ '*' ], to : [ 'riskmanager' ] },
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] }
    ];

    @cds.redirection.target
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @cds.redirection.target
    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;
}

annotate RiskManagement1Service with @requires :
[
    'authenticated-user',
    'RiskViewer',
    'riskmanager'
];
