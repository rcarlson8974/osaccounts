<%@ page import="com.otsegosolutions.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountCategory', 'error')} ">
	<label for="accountCategory">
		<g:message code="account.accountCategory.label" default="Account Category" />
		
	</label>
	<g:select id="accountCategory" name="accountCategory.id" from="${com.otsegosolutions.AccountCategory.list()}" optionKey="id" required="" value="${accountInstance?.accountCategory?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="account.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${accountInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="account.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${accountInstance?.notes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'passwordHint', 'error')} ">
	<label for="passwordHint">
		<g:message code="account.passwordHint.label" default="Password Hint" />
		
	</label>
	<g:textField name="passwordHint" value="${accountInstance?.passwordHint}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'pinHint', 'error')} ">
	<label for="pinHint">
		<g:message code="account.pinHint.label" default="Pin Hint" />
		
	</label>
	<g:textField name="pinHint" value="${accountInstance?.pinHint}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="account.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${accountInstance?.url}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${accountInstance?.username}" />

</div>

