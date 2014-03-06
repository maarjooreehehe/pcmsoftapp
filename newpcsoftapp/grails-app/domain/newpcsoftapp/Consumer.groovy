package newpcsoftapp


class Consumer {
	String username
	String password
	
	static hasMany = [complaint: Complaint]
	String toString() { return username}

    static constraints = {
	username(unique:true)
	password()
    }
	
	
}

