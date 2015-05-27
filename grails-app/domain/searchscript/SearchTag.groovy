package searchscript

class SearchTag {
    String nome
    ScriptAcception scriptAcception

    static constraints = {
        nome nullable: true
        scriptAcception nullable: true
    }
}
