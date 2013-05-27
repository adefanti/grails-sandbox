<%@ page import="org.sandbox.grails.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="customer.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${customerInstance?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="customer.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${customerInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="customer.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${customerInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="customer.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${customerInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="customer.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${customerInstance?.password}"/>
</div>

