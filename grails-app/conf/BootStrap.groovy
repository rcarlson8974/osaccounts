import com.otsegosolutions.Account
import com.otsegosolutions.AccountCategory

class BootStrap {

    def init = { servletContext ->

        if (!Account.count()) {
            new Account(
                    description: "Test",
                    username: "flnamemdyy",
                    passwordHint: "Eddie's song with 1 for 1 and @ for a",
                    pinHint: "1234",
                    url: "www.espn.com",
                    notes: "Testing the notes and see how this saves",
                    accountCategory: AccountCategory.findWhere(name: 'Sports')).save(failOnError: true)
        }
//        def userRole
//        def adminRole
//        if (Role.list().size() == 0) {
//            new Role(authority: "ROLE_USER").save()
//            new Role(authority: "ROLE_ADMIN").save()
//        }
//
//        if (User.list().size() == 0) {
//            def osuser = new User(username: 'osuser',
//                    password: 'dirtyfrank',
//                    email: 'example@email.com',
//                    accountLocked: false,
//                    enabled: true,
//                    accountExpired: false,
//                    passwordExpired: false).save()
//
//            osuser.save()
//            osuser.errors.each {
//                println it
//            }
//            def role = new UserRole(user: osuser, role: Role.findWhere(authority: 'ROLE_ADMIN')).save()
//        }
//
//        if (!AccountCategory.count()) {
//            new AccountCategory(name: 'Clients').save(failOnError: true)
//            new AccountCategory(name: 'Finance').save(failOnError: true)
//            new AccountCategory(name: 'Networking').save(failOnError: true)
//            new AccountCategory(name: 'Misc').save(failOnError: true)
//            new AccountCategory(name: 'Shopping').save(failOnError: true)
//            new AccountCategory(name: 'Social Media').save(failOnError: true)
//            new AccountCategory(name: 'Sports').save(failOnError: true)
//            new AccountCategory(name: 'Travel').save(failOnError: true)
//            new AccountCategory(name: 'Utilities').save(failOnError: true)
//        }
    }

    def destroy = {
    }
}
