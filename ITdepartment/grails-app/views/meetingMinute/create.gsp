
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <title>Create MeetingMinute</title>
    </head>
    <body>
    <div class="content">
<g:form name="meetingminuteForm" action="save">

    <div class="form-group"><label>Title: </label><g:textField class="form-control"  name="title" value="${meetingMinute?.title}" /></div>
    <div class="form-group"><label>Body: </label><g:textArea class="form-control" name="body"  value="${meetingMinute?.body}" /></div>
<div class="form-group"><label>Date: </label><g:datePicker class="form-control" name="meeting_date"  precision="day" value=""/></div>
%{--<g:actionSubmit value="Submit" class="btn btn-lg btn-primary btn-block btn-signin" controller="user" action="save"></g:actionSubmit>--}%
    <g:submitButton name="create" value="Save" class="btn btn-primary" />
</g:form>
    </div>
    </body>


</html>
