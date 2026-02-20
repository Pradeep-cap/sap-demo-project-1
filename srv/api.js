const axios = require('axios');

module.exports = (srv) => {
  srv.on('getData', async () => {
    const response = await axios.get(
      'https://api.sap.com/3GnCWnG9WjSFSBIDYG1GeDnot161Qk10',
      {
        headers: {
          'APIKey': process.env.API_KEY
        }
      }
    );
    return response.data;
  });
};
