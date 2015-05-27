<%@ page import="searchscript.ScriptAcception" %>



<div class="fieldcontain ${hasErrors(bean: scriptAcceptionInstance, field: 'identificador', 'error')} ">
	<label for="identificador">
		<g:message code="scriptAcception.identificador.label" default="Identificador" />
		
	</label>
	<g:textField name="identificador" value="${scriptAcceptionInstance?.identificador}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: scriptAcceptionInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="scriptAcception.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${scriptAcceptionInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: scriptAcceptionInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="scriptAcception.categoria.label" default="Categoria" />
		
	</label>
	<g:select name="categoria" from="${groovy.Categoria?.values()}" keys="${groovy.Categoria.values()*.name()}" value="${scriptAcceptionInstance?.categoria?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: scriptAcceptionInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="scriptAcception.tags.label" default="Tags" />
		
	</label>

	<g:if test="${scriptAcceptionInstance?.tags}">
		<g:textArea name="tags" value="${scriptAcceptionInstance?.tags*.nome.join(',')}" style="width: 250px; height: 80px;"/>
	</g:if>
	<g:else>
		<g:textArea name="tags" value="${scriptAcceptionInstance?.tags*.nome.join(',')}" style="width: 250px; height: 80px;"/>
	</g:else>

<div class="fieldcontain ${hasErrors(bean: scriptAcceptionInstance, field: 'conteudo', 'error')} ">
	<label for="conteudo">
		<g:message code="scriptAcception.conteudo.label" default="Conteudo" />

	</label>
	<g:textArea name="conteudo" value="${scriptAcceptionInstance?.conteudo}"/>

</div>

</div>

