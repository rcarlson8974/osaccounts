import React from 'react';
import ReactDOM from 'react-dom';
import Accounts from './components/Accounts';
import { Router, Route, browserHistory } from 'react-router';

const Root = () => {
    return (
        <div className="container">
            <Router history={browserHistory}>
                <Route path="/" component={Accounts}/>
            </Router>
        </div>
    )
}

ReactDOM.render(<Root />, document.getElementById('root'));