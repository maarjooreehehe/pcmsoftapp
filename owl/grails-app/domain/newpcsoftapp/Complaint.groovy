package newpcsoftapp


class Complaint {

	Date dateCreated
	String subject
	String messageType
	String body
	
	Consumer consumer
	
    static constraints = {
	consumer()
	dateCreated()
	subject()
	messageType()
	body()
	}
	
	String toString(){
	"${this.subject}"
	}
}
