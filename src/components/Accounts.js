import React, {Component} from "react";
import Nav from "./Nav";

class Accounts extends Component {

    render() {

        const osaccounts = require('./osaccounts.json');

        return (
            <div>
                <Nav />
                {/*<h3 className="text-center">OS Accounts</h3>*/}
                {/*<hr/>*/}

                <table className="table table-condensed table-hover table-striped table-bordered">
                    <thead className="thead-inverse">
                    <tr>
                        <th>Account Desc</th>
                        <th>User ID</th>
                        <th>Password Hint</th>
                        <th>Pin Hint</th>
                        <th>URL</th>
                    </tr>
                    </thead>
                    <tbody>
                    { osaccounts.map((account, index) => (
                        <tr key={index}>
                            <td>{ account.account_desc.toString().toUpperCase() }</td>
                            <td>{ account.user_id }</td>
                            <td>{ account.password_hint }</td>
                            <td>{ account.pin_id_hint }</td>
                            <td>{ account.url }</td>
                        </tr>

                        // <div className="col-sm-6" key={index}>
                        //     <div className="panel panel-primary">
                        //         <div className="panel-heading">
                        //             <h3 className="panel-title"><span
                        //                 className="btn">#{account.account_desc.toString()}</span></h3>
                        //         </div>
                        //         <div className="panel-body">
                        //             <p>User ID: { account.user_id } </p>
                        //             <p>Password Hint: { account.password_hint } </p>
                        //             <p>Pin Hint: { account.pin_id_hint } </p>
                        //             <p>URL: { account.url } </p>
                        //         </div>
                        //     </div>
                        // </div>

                    ))}
                    </tbody>
                </table>
            </div>
        );
    }
}

export default Accounts;