<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Edit a meeting minute ${meetingminute?.title}</title>
</head>
<body>
<div class="content">
<div class="form_div">
    <g:form method="put" controller="project" action="update" id="$meetingminute?.id">
        <div class="form-group">
            <label for="title">Title</label>
            <g:textField name="title" class="form-control" value="${meetingminute?.title}"></g:textField>
        </div>
        <br/>
        <div class="form-group">
            <label for="body">Body</label>
            <g:textField name="body" class="form-control" value="${meetingminute?.body}"></g:textField>
        </div>
        <br/>
        <div class="form-group">
            <label for="meeting_date">Meeting Date</label>
            <g:datePicker name="meeting_date" precision="day" class="date-picker-popup" value="${meeting?.meeting_date}"></g:datePicker>
        </div>
        <br/>

        <g:actionSubmit class="btn btn-lg btn-primary btn-block btn-signin" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:actionSubmit>
    </g:form>
</div>
    </div>
</body>
</html>