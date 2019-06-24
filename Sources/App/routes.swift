import Crypto
import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // public routes
    let userController = UserController()
    router.post("users", use: userController.create)
    
    // basic / password auth protected routes
    let basic = router.grouped(User.basicAuthMiddleware(using: BCryptDigest()))
    basic.post("login", use: userController.login)
    
    let workerController = WorkersController()
    
    basic.post("worker", use: workerController.create)
    basic.get("workers/list", use: workerController.index)
    
    basic.get("task/list") { (req) -> Tasks in
        return TasksCreater().createTasks()
    }
    

}
