package newpcsoftapp

import org.springframework.dao.DataIntegrityViolationException

class DistributorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [distributorInstanceList: Distributor.list(params), distributorInstanceTotal: Distributor.count()]
    }

    def create() {
        [distributorInstance: new Distributor(params)]
    }

    def save() {
        def distributorInstance = new Distributor(params)
        if (!distributorInstance.save(flush: true)) {
            render(view: "create", model: [distributorInstance: distributorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'distributor.label', default: 'Distributor'), distributorInstance.id])
        redirect(action: "login", id: distributorInstance.id)
    }

    def show(Long id) {
        def distributorInstance = Distributor.get(id)
        if (!distributorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "list")
            return
        }

        [distributorInstance: distributorInstance]
    }

    def edit(Long id) {
        def distributorInstance = Distributor.get(id)
        if (!distributorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "list")
            return
        }

        [distributorInstance: distributorInstance]
    }

    def update(Long id, Long version) {
        def distributorInstance = Distributor.get(id)
        if (!distributorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (distributorInstance.version > version) {
                distributorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'distributor.label', default: 'Distributor')] as Object[],
                          "Another user has updated this Distributor while you were editing")
                render(view: "edit", model: [distributorInstance: distributorInstance])
                return
            }
        }

        distributorInstance.properties = params

        if (!distributorInstance.save(flush: true)) {
            render(view: "edit", model: [distributorInstance: distributorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'distributor.label', default: 'Distributor'), distributorInstance.id])
        redirect(action: "show", id: distributorInstance.id)
    }

    def delete(Long id) {
        def distributorInstance = Distributor.get(id)
        if (!distributorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "list")
            return
        }

        try {
            distributorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'distributor.label', default: 'Distributor'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def login = {
		if (request.method == "GET") {
			session.username = null
			def distributor = new Distributor()
		}
		else {
		
		def distributor = Distributor.findByUsernameAndPassword(params.username,params.password)
		if (distributor) {
			session.username = distributor.username
			//redirect(controller:'room')
			def redirectParams =session.originalRequestParams?session.originalRequestParams:[controller:'distributor']
			redirect(controller: 'response', action: 'create')
		}

		else {
		flash['message'] = 'Please enter a valid username and password'
		}

	}
	}
	
	def logout = {
		session.accountId = null
		flash.message = 'Successfully logged out'
		redirect(controller:'distributor', action:'list')
	}
}
