
<%@ page import="com.otsegosolutions.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.accountCategory}">
				<li class="fieldcontain">
					<span id="accountCategory-label" class="property-label"><g:message code="account.accountCategory.label" default="Account Category" /></span>
					
						<span class="property-value" aria-labelledby="accountCategory-label"><g:link controller="accountCategory" action="show" id="${accountInstance?.accountCategory?.id}">${accountInstance?.accountCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="account.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="account.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${accountInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="account.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${accountInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="account.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${accountInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.passwordHint}">
				<li class="fieldcontain">
					<span id="passwordHint-label" class="property-label"><g:message code="account.passwordHint.label" default="Password Hint" /></span>
					
						<span class="property-value" aria-labelledby="passwordHint-label"><g:fieldValue bean="${accountInstance}" field="passwordHint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.pinHint}">
				<li class="fieldcontain">
					<span id="pinHint-label" class="property-label"><g:message code="account.pinHint.label" default="Pin Hint" /></span>
					
						<span class="property-value" aria-labelledby="pinHint-label"><g:fieldValue bean="${accountInstance}" field="pinHint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="account.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${accountInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="account.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
