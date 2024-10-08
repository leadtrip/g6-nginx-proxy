package wood.mike

import grails.converters.JSON

class HelloController {

    def index() {}

    def health() {
        try {
            Item.first()
            render ([status: "OK"] as JSON)
        }
        catch(any) {
            render ([status: "database down"] as JSON)
        }
    }
}
