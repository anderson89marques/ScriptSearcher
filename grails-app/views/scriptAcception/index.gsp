
<%@ page import="searchscript.ScriptAcception" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scriptAcception.label', default: 'ScriptAcception')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-scriptAcception" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-scriptAcception" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="identificador" title="${message(code: 'scriptAcception.identificador.label', default: 'Identificador')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'scriptAcception.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'scriptAcception.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'scriptAcception.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="conteudo" title="${message(code: 'scriptAcception.conteudo.label', default: 'Conteudo')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'scriptAcception.categoria.label', default: 'Categoria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${scriptAcceptionInstanceList}" status="i" var="scriptAcceptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${scriptAcceptionInstance.id}">${fieldValue(bean: scriptAcceptionInstance, field: "identificador")}</g:link></td>
					
						<td><g:formatDate date="${scriptAcceptionInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${scriptAcceptionInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: scriptAcceptionInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: scriptAcceptionInstance, field: "conteudo")}</td>
					
						<td>${fieldValue(bean: scriptAcceptionInstance, field: "categoria")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${scriptAcceptionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
