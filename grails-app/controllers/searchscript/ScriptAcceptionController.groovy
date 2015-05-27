package searchscript



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ScriptAcceptionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ScriptAcception.list(params), model:[scriptAcceptionInstanceCount: ScriptAcception.count()]
    }

    def show(ScriptAcception scriptAcceptionInstance) {
        respond scriptAcceptionInstance
    }

    def create() {
        respond new ScriptAcception(params)
    }

    @Transactional
    def save() {
        ScriptAcception scriptAcceptionInstance = new ScriptAcception(params)
        if (scriptAcceptionInstance == null) {
            notFound()
            return
        }

        if (scriptAcceptionInstance.hasErrors()) {
            respond scriptAcceptionInstance.errors, view:'create'
            return
        }
        println "Params: ${params.toString()}"

        def listtags = params.tagsnomes.split(',')
        println "Lista de tags: ${listtags}"
        for(tagnome in listtags){
            scriptAcceptionInstance.addToTags(new SearchTag(nome: tagnome))
        }
        scriptAcceptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'scriptAcception.label', default: 'ScriptAcception'), scriptAcceptionInstance.id])
                redirect scriptAcceptionInstance
            }
            '*' { respond scriptAcceptionInstance, [status: CREATED] }
        }
    }

    def edit(ScriptAcception scriptAcceptionInstance) {
        respond scriptAcceptionInstance
    }

    @Transactional
    def update(ScriptAcception scriptAcceptionInstance) {
        if (scriptAcceptionInstance == null) {
            notFound()
            return
        }

        if (scriptAcceptionInstance.hasErrors()) {
            respond scriptAcceptionInstance.errors, view:'edit'
            return
        }

        scriptAcceptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ScriptAcception.label', default: 'ScriptAcception'), scriptAcceptionInstance.id])
                redirect scriptAcceptionInstance
            }
            '*'{ respond scriptAcceptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ScriptAcception scriptAcceptionInstance) {

        if (scriptAcceptionInstance == null) {
            notFound()
            return
        }

        scriptAcceptionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ScriptAcception.label', default: 'ScriptAcception'), scriptAcceptionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'scriptAcception.label', default: 'ScriptAcception'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
