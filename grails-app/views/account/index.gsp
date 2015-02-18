<%@ page import="com.otsegosolutions.Account" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}"/>
    <title><g:message code="accounts.label"/></title>
</head>

<body>

<div class="container os-container" id="accountListContainer">

    <div class="view-container">
        <div id="accountList" class="row-fluid pad-top-10">

            <table id="accountListTable"
                   class="ostable table table-responsive table-striped table-bordered table-hover table-condensed">
                <thead class="tableHeader">
                <tr>
                    <th><g:message code="account.accountCategory.label" default="Account Category"/></th>
                    <th><g:message code="account.description.label" default="Description"/></th>
                    <th><g:message code="account.username.label" default="Username"/></th>
                    <th><g:message code="account.passwordHint.label" default="Password Hint"/></th>
                    <th><g:message code="account.pinHint.label" default="Pin Hint"/></th>
                    <th><g:message code="account.url.label" default="URL"/></th>
                    <th><g:message code="account.notes.label" default="Notes"/></th>
                    <th><g:message code="action.label" default="Action"/></th>
                </tr>
                </thead>
                <g:render template="listTemplate" model="[accounts: accountInstanceList]"/>
            </table>
        </div>
    </div>
</div>

<g:javascript>

			$(document).ready(function() {
				initAccountListTable();
				addTableHeader();
			});


			function initAccountListTable()	{
              $('#accountListTable').DataTable( {
					dom: '<"H"l<"os-table-header">fr>t<"F"ip>',
					pagingType: "simple_numbers",
					bootstrap: true,
					jQueryUI: true,
					lengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
					displayLength: -1,
					info: "Accounts",
					destroy: true,
					stateSave: true,
					language: {
						lengthMenu: "_MENU_ records per page"
					},
					columns: [
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ orderDataType: "dom-text" },
						{ sortable: false }
					]
	    		});

			}

			function addTableHeader()	{
	    		$("#accountListTable_wrapper .os-table-header").html('<h4><g:message code="accounts.label"/></h4>');
	    		$("#accountListTable_wrapper .os-table-header").addClass("col-sm-4 centerize pad-top-10");
	    		$("#accountListTable_wrapper .os-table-header").parent().addClass("os-table-header-footer-row");
				$("#accountListTable_length").addClass("col-sm-4 pad-top-10 pad-left-10");
				$("#accountListTable_filter").addClass("col-sm-4 pad-top-10 pad-right-10");
                $('#accountListTable_filter input').attr("placeholder", "Search Accounts");
				$("#accountListTable_info").addClass("col-sm-5 pad-left-10");
				$('#accountListTable_info').parent().addClass("os-table-header-footer-row");
				$("#accountListTable_paginate").addClass("col-sm-7 pad-top-7 pad-right-10");
			}

</g:javascript>
</body>
</html>
