const BASE_URL = 'http://localhost:3333';

export {getAccounts};

function getAccounts() {
    const osaccounts = require('../components/osaccounts.json');
    return osaccounts;
}

