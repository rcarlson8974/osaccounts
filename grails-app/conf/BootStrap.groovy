import com.otsegosolutions.AccountCategory
import com.otsegosolutions.Role
import com.otsegosolutions.User
import com.otsegosolutions.UserRole

class BootStrap {

    def init = { servletContext ->


        if (Role.list().size() == 0) {
            new Role(authority: "ROLE_USER").save()
            new Role(authority: "ROLE_ADMIN").save()
        }

        if (User.list().size() == 0) {
            def osuser = new User(username: 'osuser',
                    password: 'dirtyfrank',
                    email: 'example@email.com',
                    accountLocked: false,
                    enabled: true,
                    accountExpired: false,
                    passwordExpired: false).save()

            osuser.save()
            osuser.errors.each {
                println it
            }
            def role = new UserRole(user: osuser, role: Role.findWhere(authority: 'ROLE_ADMIN')).save()
        }

        if (!AccountCategory.count()) {
            new AccountCategory(name: 'Clients').save(failOnError: true)
            new AccountCategory(name: 'Finance').save(failOnError: true)
            new AccountCategory(name: 'Networking').save(failOnError: true)
            new AccountCategory(name: 'Misc').save(failOnError: true)
            new AccountCategory(name: 'Shopping').save(failOnError: true)
            new AccountCategory(name: 'Social Media').save(failOnError: true)
            new AccountCategory(name: 'Sports').save(failOnError: true)
            new AccountCategory(name: 'Travel').save(failOnError: true)
            new AccountCategory(name: 'Utilities').save(failOnError: true)
        }
    }

    def destroy = {
    }
}
