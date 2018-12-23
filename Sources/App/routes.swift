import Vapor
import Leaf

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return try req.view().render("index")
    }
    
    let testC = TestController()
    
    router.get("test", use: testC.hello)
    
//    // Basic "Hello, world!" example
//    router.get("hello") { req -> Future<View> in
//        return try req.view().render("index")
//    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
