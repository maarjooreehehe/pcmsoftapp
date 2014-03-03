package newpcsoftapp


class Consumer {
	String username
	String password
	
	static hasMany = [complaint: Complaint]

    static constraints = {
	username(unique:true)
	password()
    }
	
	String toString(){
	"${this.username}"
	}
}

