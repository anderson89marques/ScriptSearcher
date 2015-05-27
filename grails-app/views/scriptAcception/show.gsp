
<%@ page import="searchscript.ScriptAcception" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scriptAcception.label', default: 'ScriptAcception')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-scriptAcception" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-scriptAcception" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list scriptAcception">
			
				<g:if test="${scriptAcceptionInstance?.identificador}">
				<li class="fieldcontain">
					<span id="identificador-label" class="property-label"><g:message code="scriptAcception.identificador.label" default="Identificador" /></span>
					
						<span class="property-value" aria-labelledby="identificador-label"><g:fieldValue bean="${scriptAcceptionInstance}" field="identificador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="scriptAcception.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${scriptAcceptionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="scriptAcception.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${scriptAcceptionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="scriptAcception.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${scriptAcceptionInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.conteudo}">
				<li class="fieldcontain">
					<span id="conteudo-label" class="property-label"><g:message code="scriptAcception.conteudo.label" default="Conteudo" /></span>
					
						<span class="property-value" aria-labelledby="conteudo-label"><g:fieldValue bean="${scriptAcceptionInstance}" field="conteudo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="scriptAcception.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${scriptAcceptionInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scriptAcceptionInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="scriptAcception.tags.label" default="Tags" /></span>
					
						<g:each in="${scriptAcceptionInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="searchTag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:scriptAcceptionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${scriptAcceptionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
