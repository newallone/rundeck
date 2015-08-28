
<g:set var="textColor" value="text-info"/>
<g:set var="iconName" value="${iscommit?'glyphicon-plus':'glyphicon-question-sign'}"/>
<g:set var="defaultText" value="not-found"/>
<g:if test="${status.toString()=='EXPORT_NEEDED'}">
    <g:set var="textColor" value="text-info"/>
    <g:set var="iconName" value="glyphicon-exclamation-sign"/>
    <g:set var="defaultText" value="Modified"/>
</g:if>
<g:elseif test="${status.toString()=='CREATE_NEEDED'}">
    <g:set var="textColor" value="text-success"/>
    <g:set var="iconName" value="glyphicon-exclamation-sign"/>
    <g:set var="defaultText" value="Created"/>
</g:elseif>
<g:elseif test="${status.toString()=='DELETED'}">
    <g:set var="textColor" value="text-danger"/>
    <g:set var="iconName" value="glyphicon-minus-sign"/>
    <g:set var="defaultText" value="Deleted"/>

</g:elseif>
<g:elseif test="${status.toString()=='CLEAN'}">
    <g:set var="textColor" value="text-muted"/>
    <g:set var="iconName" value="glyphicon-ok-sign"/>
    <g:set var="defaultText" value="No change"/>
</g:elseif>

<span class="${textColor}">
    <g:if test="${!noicon}">
        <span class="glyphicon ${icon?:iconName}"></span>
    </g:if>
    <g:if test="${!notext}">
        ${text?:defaultText}
    </g:if>
</span>