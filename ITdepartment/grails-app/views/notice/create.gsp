
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />

    <title>Create Notice</title>
</head>
<body>
<div class="content">
    <g:form name="noticeform" action="save">

        <div class="form-group"><label>Title: </label><g:textField class="form-control"  name="title"  value="${notice?.title}" /></div>
        <div class="form-group"><label>Body: </label><g:textArea class="form-control" name="body"  value="${notice?.body}" /></div>
        <div class="form-group"><label>Published Date </label><g:datePicker class="form-control" name="published_date" precision="day"/></div>
    %{--<g:actionSubmit value="Submit" class="btn btn-lg btn-primary btn-block btn-signin" controller="user" action="save"></g:actionSubmit>--}%
        <g:submitButton name="create" value="Save" class="btn btn-primary" />
    </g:form>
</div>
</body>


</html>
