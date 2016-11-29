
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />

    <title>Create user</title>
</head>
<body>
<div class="content">
<g:each in="${meetingminutes}" var="meetingminute">
    ----------------------------------------------------------------------------------------------------
    <br>
    Title: ${meetingminute.title}<br>
    Body: ${meetingminute.body}<br>
    Meeting date:${meetingminute.meeting_date} <br>
    <br>
    ----------------------------------------------------------------------------------------------

</g:each>
</div>
</body>


</html>



