const BASE_URL = 'http://localhost:3333';

export {getAccounts};

function getAccounts() {
    console.log("accounts-api.js.getAccounts");
    const osaccounts = require('../components/osaccounts.json');
    console.log("osaccounts: " + osaccounts);
    return osaccounts;
    // const url = `${BASE_URL}/api/accounts`;
    // return axios.get(url).then(response => response.data);
}

