<%@ page import="searchscript.SearchTag" %>



<div class="fieldcontain ${hasErrors(bean: searchTagInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="searchTag.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${searchTagInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: searchTagInstance, field: 'scriptAcception', 'error')} ">
	<label for="scriptAcception">
		<g:message code="searchTag.scriptAcception.label" default="Script Acception" />
		
	</label>
	<g:select id="scriptAcception" name="scriptAcception.id" from="${searchscript.ScriptAcception.list()}" optionKey="id" value="${searchTagInstance?.scriptAcception?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

