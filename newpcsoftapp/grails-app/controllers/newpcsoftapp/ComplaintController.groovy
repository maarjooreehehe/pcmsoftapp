package newpcsoftapp

import org.springframework.dao.DataIntegrityViolationException

class ComplaintController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [complaintInstanceList: Complaint.list(params), complaintInstanceTotal: Complaint.count()]
    }

    def create() {
        
		[complaintInstance: new Complaint(params)]
    }

    def save() {
		
		
		String messageType = params.messageType;
		String subject = params.subject;
		String body = params.body;
		
		println subject + " "+ body;
		def consumer = Consumer.find("from Consumer as consumer where consumer.username=:username",[username:params.consumer])

		def date = new Date();
		def complaintInstance = new Complaint(owner:consumer,dateCreated:date,messageType:messageType,subject:subject,body:body)
            if (complaintInstance.save(flush: true) && complaintInstance.validate()) {
            render(view: "show", model: [complaintInstance: complaintInstance])
            return
        }
		
        redirect(action:"show", id:complaintInstance.id)

    }

    def show(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        [complaintInstance: complaintInstance]
    }

    def edit(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        [complaintInstance: complaintInstance]
    }

    def update(Long id, Long version) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (complaintInstance.version > version) {
                complaintInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'complaint.label', default: 'Complaint')] as Object[],
                          "Another user has updated this Complaint while you were editing")
                render(view: "edit", model: [complaintInstance: complaintInstance])
                return
            }
        }

        complaintInstance.properties = params

        if (!complaintInstance.save(flush: true)) {
            render(view: "edit", model: [complaintInstance: complaintInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'complaint.label', default: 'Complaint'), complaintInstance.id])
        redirect(action: "show", id: complaintInstance.id)
    }

    def delete(Long id) {
        def complaintInstance = Complaint.get(id)
        if (!complaintInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
            return
        }

        try {
            complaintInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'complaint.label', default: 'Complaint'), id])
            redirect(action: "show", id: id)
        }
    }
}
