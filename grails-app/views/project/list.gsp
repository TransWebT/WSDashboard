
<%@ page import="com.tdbank.greenhornet.Project" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'project.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="itNumber" title="${message(code: 'project.itNumber.label', default: 'It Number')}" />
                        
                            <g:sortableColumn property="primaveraId" title="${message(code: 'project.primaveraId.label', default: 'Primavera Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'project.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="owner" title="${message(code: 'project.owner.label', default: 'Owner')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${projectInstanceList}" status="i" var="projectInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: projectInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: projectInstance, field: "itNumber")}</td>
                        
                            <td>${fieldValue(bean: projectInstance, field: "primaveraId")}</td>
                        
                            <td>${fieldValue(bean: projectInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: projectInstance, field: "owner")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${projectInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
