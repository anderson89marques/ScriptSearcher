package searchscript



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SearchTagController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SearchTag.list(params), model:[searchTagInstanceCount: SearchTag.count()]
    }

    def show(SearchTag searchTagInstance) {
        respond searchTagInstance
    }

    def create() {
        respond new SearchTag(params)
    }

    @Transactional
    def save(SearchTag searchTagInstance) {
        if (searchTagInstance == null) {
            notFound()
            return
        }

        if (searchTagInstance.hasErrors()) {
            respond searchTagInstance.errors, view:'create'
            return
        }

        searchTagInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'searchTag.label', default: 'SearchTag'), searchTagInstance.id])
                redirect searchTagInstance
            }
            '*' { respond searchTagInstance, [status: CREATED] }
        }
    }

    def edit(SearchTag searchTagInstance) {
        respond searchTagInstance
    }

    @Transactional
    def update(SearchTag searchTagInstance) {
        if (searchTagInstance == null) {
            notFound()
            return
        }

        if (searchTagInstance.hasErrors()) {
            respond searchTagInstance.errors, view:'edit'
            return
        }

        searchTagInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SearchTag.label', default: 'SearchTag'), searchTagInstance.id])
                redirect searchTagInstance
            }
            '*'{ respond searchTagInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SearchTag searchTagInstance) {

        if (searchTagInstance == null) {
            notFound()
            return
        }

        searchTagInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SearchTag.label', default: 'SearchTag'), searchTagInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'searchTag.label', default: 'SearchTag'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
