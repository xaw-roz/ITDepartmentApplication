<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Edit a notice ${notice?.title}</title>
</head>
<body>
<div class="content">
    <div class="form_div">
        <g:form method="put" controller="project" action="update" id="$meetingminute?.id">
            <div class="form-group">
                <label for="title">Title</label>
                <g:textField name="title" class="form-control" value="${notice?.title}"></g:textField>
            </div>
            <br/>
            <div class="form-group">
                <label for="body">Body</label>
                <g:textField name="body" class="form-control" value="${notice?.body}"></g:textField>
            </div>
            <br/>
            <div class="form-group">
                <label for="published_date">Published date:</label>
                <g:datePicker name="published_date" precision="day" class="date-picker-popup" value="${notice?.published_date}"></g:datePicker>
            </div>
            <br/>

            <g:actionSubmit class="btn btn-lg btn-primary btn-block btn-signin" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:actionSubmit>
        </g:form>
    </div>
</div>
</body>
</html>