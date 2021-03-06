package com.tdbank.greenhornet

class CodePhase {
	String name
	Integer displayOrder
	User modifiedBy
	Date dateCreated
	Date lastUpdated

	static constraints = {
		name(unique:true, blank:false)
		displayOrder(nullable:true)
		lastUpdated()
		modifiedBy()
	}
	
	String toString() {
		return name
	}
}
