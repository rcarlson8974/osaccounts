class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        // default view when launching the app
        "/"(controller: "account", action: "index")

        "500"(view:'/error')
	}
}
