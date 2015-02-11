<%@ page import="com.otsegosolutions.AccountCategory" %>



<div class="fieldcontain ${hasErrors(bean: accountCategoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="accountCategory.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${accountCategoryInstance?.name}" />

</div>

