package com.otsegosolutions

import groovy.transform.ToString
import org.bson.types.ObjectId

@ToString(includeNames = true, includeFields = true, excludes = "password")
class User {

    static mapWith = 'mongo'

    transient springSecurityService

    ObjectId id
    String username
    String password
    String email
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Set<Role> authorities
    static embedded = ['authorities']

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        println "fuck you"
//        UserRole.findAllByUser(this).collect { it.role }
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }
}
