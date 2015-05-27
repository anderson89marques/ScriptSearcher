package searchscript

class SearchTag {
    String nome
    ScriptAcception scriptAcception
    static belongsTo = [ScriptAcception]

    static constraints = {
        nome nullable: true
        scriptAcception nullable: true
    }
}
