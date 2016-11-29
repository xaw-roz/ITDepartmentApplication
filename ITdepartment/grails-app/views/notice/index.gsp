<g:if test="${flash.message}">
    <div class="message" role="status" onabort="">${flash.message}</div>
</g:if>

<meta name="layout" content="main"/>
<div class="content">
    <div class="form_div">

        <f:table collection="notices" properties="['title','body','published_date']"></f:table>

    </div>
</div>