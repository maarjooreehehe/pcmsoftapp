package newpcsoftapp


abstract class ConsumerBaseController {
	def auth() {
		if(!session.username) {
		def originalRequestParams = [controller:controllerName,action:actionName]
		originalRequestParams.putAll(params)
		session.originalRequestParams = originalRequestParams
		redirect(controller:'consumer',action:'login')
		return false
	}
	}
}