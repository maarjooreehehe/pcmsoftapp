package newpcsoftapp

import org.springframework.dao.DataIntegrityViolationException

class ConsumerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [consumerInstanceList: Consumer.list(params), consumerInstanceTotal: Consumer.count()]
    }

    def create() {
        [consumerInstance: new Consumer(params)]
    }

    def save() {
        def consumerInstance = new Consumer(params)
        if (!consumerInstance.save(flush: true)) {
            render(view: "create", model: [consumerInstance: consumerInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'consumer.label', default: 'Consumer'), consumerInstance.id])
        redirect(action: "afterSave", id: consumerInstance.id)
    }
	
	def afterSave(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        [consumerInstance: consumerInstance]
    }
		def sent(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(controller: "complaint", action: "list")
            return
        }

        [consumerInstance: consumerInstance]
    }
	
		def logoutPage(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        [consumerInstance: consumerInstance]
    }
	
	

    def show(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        [consumerInstance: consumerInstance]
    }
	
	
	
    def edit(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        [consumerInstance: consumerInstance]
    }

    def update(Long id, Long version) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (consumerInstance.version > version) {
                consumerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'consumer.label', default: 'Consumer')] as Object[],
                          "Another user has updated this Consumer while you were editing")
                render(view: "edit", model: [consumerInstance: consumerInstance])
                return
            }
        }

        consumerInstance.properties = params

        if (!consumerInstance.save(flush: true)) {
            render(view: "edit", model: [consumerInstance: consumerInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'consumer.label', default: 'Consumer'), consumerInstance.id])
        redirect(action: "show", id: consumerInstance.id)
    }

    def delete(Long id) {
        def consumerInstance = Consumer.get(id)
        if (!consumerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
            return
        }

        try {
            consumerInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'consumer.label', default: 'Consumer'), id])
            redirect(action: "show", id: id)
        }
    }

	
	def login = {
		if (request.method == "GET") {
			session.username = null
			def consumer = new Consumer()
		}
		else {
		
		def consumer = Consumer.findByUsernameAndPassword(params.username,params.password)
		if (consumer) {
			session.username = consumer.username
			def redirectParams =session.originalRequestParams?session.originalRequestParams:[controller:'consumer']
			redirect(controller: 'charts', action:'index')
		}

		else {
		flash['message'] = 'Please enter a valid username and password'
		}

	}
	}
	
	
	def logout = {
		session.accountId = null
		session.username = null
		flash.message = 'Successfully logged out'
		render(view: 'afterSave')
	}
}