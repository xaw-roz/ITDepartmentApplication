package itdepartment

import grails.plugin.springsecurity.annotation.Secured

class MeetingMinuteController {
    def springSecurityService
    int index = 0;


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(['permitAll'])
    def index() {
        def meetingminutes=MeetingMinute.findAll("from MeetingMinute order by meeting_date")
               // [max: index+5, offset: index])
        meetingminutes= meetingminutes.drop(index).take(index+5)
        [meetingminutes: meetingminutes]
    }
    @Secured(['permitAll'])
    def home(){
        def meetingminutes = MeetingMinute.findAll();
        [meetingminutes: meetingminutes]
    }
    @Secured(['permitAll'])
    def create() {
        def meetingminute = new MeetingMinute()

        [meetingminute: meetingminute]
    }
    @Secured(['permitAll'])
    def save() {
        def meetingminute = new MeetingMinute(params)
        def success=meetingminute.save(failOnError:true)
        if(success) {
            flash.message = "Successfully saved"
        }

        redirect action: 'index'

    }
    @Secured(['permitAll'])
    def edit() {
        def meetingminute = MeetingMinute.get(params.id)
        [meetingminute: meetingminute]

    }
    @Secured(['permitAll'])
    def update()

    {
        def meetingminute = MeetingMinute.get(params.id)
        bindData(meetingminute, params)
        flash.message = "The changes were stored successfully"
        redirect action: 'index'
    }

    @Secured(['permitAll'])
    def delete() {
        def meetingminute = MeetingMinute.get(params.id)
        def result = meetingminuteService.deleteMeetingMinute(meetingminute)
        if (result.message) {
            flash.message = "The meetingminute was deleted successfully"
        }
        redirect action: 'index'

    }

    @Secured(['permitAll'])
    def show() {
        def meetingminute = MeetingMinute.get(params.id)
        [meetingminute: meetingminute]
    }
}

