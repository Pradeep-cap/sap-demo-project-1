namespace RiskManagement1;

entity Risks
{
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    critically : Integer;
    key ID : UUID;
    miti : Association to one Mitigations;
}

entity Mitigations
{
    createdAt : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    key ID : UUID;
    risks : Association to many Risks on risks.miti = $self;
}
