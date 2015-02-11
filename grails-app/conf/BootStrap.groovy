import com.otsegosolutions.AccountCategory
import com.otsegosolutions.Role
import com.otsegosolutions.User

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def role = new Role(authority: 'ROLE_USER').save()
        new User(username: 'osuser', password: 'dirtyfrank',
                email: 'example@email.com', authorities: [role]).save(flush:true)

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
