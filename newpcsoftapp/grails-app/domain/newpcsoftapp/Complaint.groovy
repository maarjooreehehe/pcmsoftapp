package newpcsoftapp


class Complaint {

	Date dateCreated
	String subject
	String messageType
	String body
	Consumer owner
	
	static belongsTo = [Consumer]
	
	
	
    static constraints = {
	
	dateCreated()
	subject()
	messageType()
	body()
	}
	
	String toString(){
	"${this.subject}"
	}
}
