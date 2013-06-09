package org.sandbox.grails

/**
 * Domain object representing a customer.
 */
class Customer {

	String login
	String password
	String firstname
	String lastname
	Date dateOfBirth

	static constraints = {		
		lastname(blank:false)
		firstname(blank:false, nullable:false)
		dateOfBirth(validator: {return (it < new Date())})
		login(blank:false, nullable:false, unique:true)
		password(blank:false, nullable:false, password:true)
	}
}
