package newpcsoftapp

class Response {

	Complaint complaint
	Date dateCreated
	String body
	
    static constraints = {
	dateCreated()
	body()
	complaint()
    }
	
	String toString(){
	"${this.complaint.subject} reply"
	}
	
	
}

