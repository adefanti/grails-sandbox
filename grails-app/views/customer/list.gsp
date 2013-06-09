
<%@ page import="org.sandbox.grails.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lastname" title="${message(code: 'customer.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="firstname" title="${message(code: 'customer.firstname.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'customer.dateOfBirth.label', default: 'Date Of Birth')}" />
					
						<g:sortableColumn property="login" title="${message(code: 'customer.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'customer.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerInstanceList}" status="i" var="customerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "lastname")}</g:link></td>
					
						<td>${fieldValue(bean: customerInstance, field: "firstname")}</td>
					
						<td><g:formatDate date="${customerInstance.dateOfBirth}" /></td>
					
						<td>${fieldValue(bean: customerInstance, field: "login")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
