package newpcsoftapp


abstract class DistributorBaseController {
	def auth() {
		if(!session.username) {
		def originalRequestParams = [controller:controllerName,action:actionName]
		originalRequestParams.putAll(params)
		session.originalRequestParams = originalRequestParams
		redirect(controller:'distributor',action:'login')
		return false
	}
	}
}