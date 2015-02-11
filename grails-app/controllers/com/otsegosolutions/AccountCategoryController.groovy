package com.otsegosolutions



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountCategory.list(params), model:[accountCategoryInstanceCount: AccountCategory.count()]
    }

    def show(AccountCategory accountCategoryInstance) {
        respond accountCategoryInstance
    }

    def create() {
        respond new AccountCategory(params)
    }

    @Transactional
    def save(AccountCategory accountCategoryInstance) {
        if (accountCategoryInstance == null) {
            notFound()
            return
        }

        if (accountCategoryInstance.hasErrors()) {
            respond accountCategoryInstance.errors, view:'create'
            return
        }

        accountCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountCategory.label', default: 'AccountCategory'), accountCategoryInstance.id])
                redirect accountCategoryInstance
            }
            '*' { respond accountCategoryInstance, [status: CREATED] }
        }
    }

    def edit(AccountCategory accountCategoryInstance) {
        respond accountCategoryInstance
    }

    @Transactional
    def update(AccountCategory accountCategoryInstance) {
        if (accountCategoryInstance == null) {
            notFound()
            return
        }

        if (accountCategoryInstance.hasErrors()) {
            respond accountCategoryInstance.errors, view:'edit'
            return
        }

        accountCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountCategory.label', default: 'AccountCategory'), accountCategoryInstance.id])
                redirect accountCategoryInstance
            }
            '*'{ respond accountCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountCategory accountCategoryInstance) {

        if (accountCategoryInstance == null) {
            notFound()
            return
        }

        accountCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountCategory.label', default: 'AccountCategory'), accountCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountCategory.label', default: 'AccountCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
