hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        println("In local dev environment")
        grails {
            mongo {
                options {
                    autoConnectRetry = true
                    connectTimeout = 300
                }
                host = "localhost"
                port = 27017
                username = "osAdmin"
                password = "D1rtyfr@nk"
                databaseName = "osaccounts"
            }
        }
    }
    test {
        println("In test environment")
        grails {
            mongo {
                options {
                    autoConnectRetry = true
                    connectTimeout = 300
                }
                host = "10.157.192.99"
                port = 27017
                username = "shop"
                password = "shop"
                databaseName = "tony"
            }
        }
    }
    ci {
        println("In jenkins ci environment")
        grails {
            mongo {
                options {
                    autoConnectRetry = true
                    connectTimeout = 300
                }
                host = "10.157.192.99"
                port = 27017
                username = "shop"
                password = "shop"
                databaseName = "tony"
            }
        }
    }
    production {
        println("In production environment")
        grails {
            mongo {
                options {
                    autoConnectRetry = true
                    connectTimeout = 300
                }
                host = "10.157.192.99"
                port = 27017
                username = "shop"
                password = "shop"
                databaseName = "tony"
            }
        }
    }
}