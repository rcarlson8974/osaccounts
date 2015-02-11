package com.otsegosolutions

import groovy.transform.ToString
import org.bson.types.ObjectId

@ToString(includeNames = true, includeFields = true)
//class Account extends DomainObject implements Serializable {
class Account implements Serializable {

    ObjectId id
    Date dateCreated
    Date lastUpdated

    String description
    String username
    String passwordHint
    String pinHint
    String url
    String notes
    AccountCategory accountCategory

    static constraints = {
    }
}
