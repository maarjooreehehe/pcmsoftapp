package newpcsoftapp



import org.springframework.dao.DataIntegrityViolationException

class ResponseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
	
		def owner = Consumer.find("from Consumer as consumer where consumer.username=:username",[username:params.id]);
		
		def responses = Response.findAll("from Response as res where res.complaint.owner=:owner",[owner:owner]);

        [responseInstanceList: responses, responseInstanceTotal: Response.count()]
    }

    def create(Long id) {
		def complaintInstance = Complaint.get(id)
        [responseInstance: new Response(params), complaintInstance:complaintInstance]
    }

    def save() {

        def responseInstance = new Response(params)
        if (!responseInstance.save(flush: true)) {
            render(view: "create", model: [responseInstance: responseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'response.label', default: 'Response'), responseInstance.id])
        redirect(action: "show", id: responseInstance.id)
    }

    def show(Long id) {
        def responseInstance = Response.get(id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "list")
            return
        }

        [responseInstance: responseInstance]
    }

    def edit(Long id) {
        def responseInstance = Response.get(id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "list")
            return
        }

        [responseInstance: responseInstance]
    }

    def update(Long id, Long version) {
        def responseInstance = Response.get(id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (responseInstance.version > version) {
                responseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'response.label', default: 'Response')] as Object[],
                          "Another user has updated this Response while you were editing")
                render(view: "edit", model: [responseInstance: responseInstance])
                return
            }
        }

        responseInstance.properties = params

        if (!responseInstance.save(flush: true)) {
            render(view: "edit", model: [responseInstance: responseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'response.label', default: 'Response'), responseInstance.id])
        redirect(action: "show", id: responseInstance.id)
    }

    def delete(Long id) {
        def responseInstance = Response.get(id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "list")
            return
        }

        try {
            responseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'response.label', default: 'Response'), id])
            redirect(action: "show", id: id)
        }
    }
}
