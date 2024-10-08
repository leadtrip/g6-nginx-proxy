<h1>Hello ${request.cookies.find{ 'a_name' == it.name }?.value} from grails</h1>

<h3>Cookies</h3>
<ul>
    <g:each in="${request.cookies}" var="c">
        <li>${c.name} = ${c.value}</li>
    </g:each>
</ul>

<h3>Headers</h3>
<ul>
    <g:each in="${request.headerNames.asIterator().sort()}" var="h">
        <li>${h} = ${request.getHeader(h)}</li>
    </g:each>
</ul>

<h3>URL params</h3>
<ul>
    <g:each in="${params}" var="p">
        <li>${p}</li>
    </g:each>
</ul>