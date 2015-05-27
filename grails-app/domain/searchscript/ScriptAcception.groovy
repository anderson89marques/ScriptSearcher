package searchscript

import groovy.Categoria

class ScriptAcception {
    String identificador
    Date dateCreated
    Date lastUpdated
    String descricao
    String conteudo
    String projeto
    Categoria categoria

    static hasMany = [tags:SearchTag]

    static constraints = {
        identificador nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
        descricao nullable: true
        conteudo nullable: true
        categoria nullable: true
        projeto nullable: true
        tags nullable: true
    }

    String toString(){
        "Ident: $identificador, data cri: $dateCreated, data ultima mudança: $lastUpdated, categoria: $categoria"
    }
}
