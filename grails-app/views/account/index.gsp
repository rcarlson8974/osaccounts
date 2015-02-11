
<%@ page import="com.otsegosolutions.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="account.accountCategory.label" default="Account Category" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'account.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'account.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'account.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'account.notes.label', default: 'Notes')}" />
					
						<g:sortableColumn property="passwordHint" title="${message(code: 'account.passwordHint.label', default: 'Password Hint')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "accountCategory")}</g:link></td>
					
						<td><g:formatDate date="${accountInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "description")}</td>
					
						<td><g:formatDate date="${accountInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "passwordHint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
