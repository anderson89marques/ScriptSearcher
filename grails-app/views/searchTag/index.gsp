
<%@ page import="searchscript.SearchTag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'searchTag.label', default: 'SearchTag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-searchTag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-searchTag" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'searchTag.nome.label', default: 'Nome')}" />
					
						<th><g:message code="searchTag.scriptAcception.label" default="Script Acception" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${searchTagInstanceList}" status="i" var="searchTagInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${searchTagInstance.id}">${fieldValue(bean: searchTagInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: searchTagInstance, field: "scriptAcception")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${searchTagInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
