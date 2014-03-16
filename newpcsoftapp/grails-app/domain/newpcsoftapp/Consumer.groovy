package newpcsoftapp


class Consumer {
	String username
	String password
	String password2
	
	static transients = ['password2']
	
	static hasMany = [complaint: Complaint]
	
	String toString() { return username}

    static constraints = {
	username(unique:true)
	password (size:6..10, blank:false, matches:/[\S]+/, validator:{val, obj ->
			if (obj.password != obj.password2)
			return 'user.password.dontmatch'})
	password2 bindable: true
    }
	
	
}

