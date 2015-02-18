package com.otsegosolutions

import groovy.transform.ToString
import org.bson.types.ObjectId

@ToString(includeNames = true, includeFields = true)
class AccountCategory implements Serializable {

    ObjectId id
    Date dateCreated
    Date lastUpdated

    String name

    static constraints = {
    }
}
