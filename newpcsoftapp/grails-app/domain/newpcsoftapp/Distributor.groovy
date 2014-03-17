package newpcsoftapp

class Distributor {
	String username
	String password
	
    static constraints = {
	username(unique:true)
	password()
    }
	
	String toString(){
	"${this.username}"
	}
}

