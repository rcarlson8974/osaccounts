package com.otsegosolutions

import org.bson.types.ObjectId

class DomainObject {

    ObjectId id
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
}
