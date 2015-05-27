package groovy

/**
 * Created by anderson on 20/05/15.
 */
enum Categoria {
    DEVOP("Devop"),
    LINUX("Linux"),
    GRAILS("Grails"),
    HTML("Html")

    String nome

    Categoria(nome){
        this.nome = nome
    }

    def list(){
        [DESENVOLVIMENTO, DEVOP, LINUX, GRAILS]
    }
}