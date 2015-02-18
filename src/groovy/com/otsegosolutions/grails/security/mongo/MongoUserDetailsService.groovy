package com.otsegosolutions.grails.security.mongo

import org.slf4j.Logger
import org.slf4j.LoggerFactory

class MongoUserDetailsService {
//class MongoUserDetailsService implements GrailsUserDetailsService {

    private Logger log = LoggerFactory.getLogger(getClass())

//    UserDetails loadUserByUsername(String username, boolean loadRoles) {
//
//        def user = User.findByUsername(username)
//        if (!user) {
//            log.warn "User not found: $username"
//            throw new NoStackUsernameNotFoundException()
//        }
//
//        def roles
//        if (loadRoles) {
//            roles = user.authorities?.collect { new SimpleGrantedAuthority(it.authority) }
//        }
//
//        new GrailsUser(user.username, user.password, user.enabled,
//                !user.accountExpired, !user.passwordExpired,
//                !user.accountLocked, roles ?: [GormUserDetailsService.NO_ROLE], user.id)
//        return null
//    }
//
//    UserDetails loadUserByUsername(String username) {
//        loadUserByUsername username, true
//    }
}