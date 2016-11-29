package itdepartment

import grails.plugin.springsecurity.annotation.Secured

class NoticeController {

    int index = 0;


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(['permitAll'])
    def index() {
        def notices = Notice.findAll();
        [notices: notices]
    }
    @Secured(['permitAll'])
    def home(){
   def notices = Notice.findAll();
        [notices: notices]

    }
    @Secured(['permitAll'])
    def create() {
        def notice = new Notice()

        [notice: notice]
    }
    @Secured(['permitAll'])
    def save() {
        def notice = new Notice(params)
        def success=notice.save(failOnError:true)
        if(success) {
            flash.message = "Successfully saved"
        }

        redirect action: 'index'

    }
    @Secured(['permitAll'])
    def edit() {
        def notice = Notice.get(params.id)
        [notice: notice]

    }
    @Secured(['permitAll'])
    def update()

    {
        def notice = Notice.get(params.id)
        bindData(notice, params)
        flash.message = "The changes were stored successfully"
        redirect action: 'index'
    }

    @Secured(['permitAll'])
    def delete() {
        def notice = Notice.get(params.id)
        def result = noticeService.deleteNotice(notice)
        if (result.message) {
            flash.message = "The notice was deleted successfully"
        }
        redirect action: 'index'

    }

    @Secured(['permitAll'])
    def show() {
        def notice=Notice.get(params.id)
        [notice: notice]
    }
}
