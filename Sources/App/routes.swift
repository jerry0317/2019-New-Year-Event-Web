import Vapor
import Leaf

public func routes(_ router: Router) throws {
    router.get { req in
        return try req.view().render("index")
    }
    
    let testC = TestController()
    
    router.get("test", use: testC.hello)
    
    router.get("sql") { req in
        return Comment.query(on: req).all()
    }
    
    struct CommentRequest: Content {
        var content: String
        var longitude: Double
        var latitude: Double
        var altitude: Double?
    }
    
    router.post(CommentRequest.self, at: "postcomment") { req, comm -> Future<Comment> in
        let comment = Comment(content: comm.content, location: Location(comm.longitude, comm.latitude, comm.latitude))
        return comment.create(on: req)
    }
    
}
