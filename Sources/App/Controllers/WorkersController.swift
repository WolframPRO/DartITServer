import Crypto
import Vapor
import FluentSQLite

final class WorkersController {
    
    /// Returns a list of all todos for the auth'd user.
    func index(_ req: Request) throws -> Future<WorkerListResult> {
        
        return UserModel.query(on: req)
            .all().map { (users) -> (WorkerListResult) in
                let usersUidList = users.map { user in
                    return user.uid ?? ""
                }
                return WorkerListResult(users: users, departaments: DepartmentModel(cn: "cn", name: "Все пользователи", users: usersUidList))
        }
    }
    
    /// Creates a new todo for the auth'd user.
    func create(_ req: Request) throws -> Future<UserModel> {
        // fetch auth'd user
        
        // decode request content
        return try req.content.decode(CreateWorkerRequest.self).flatMap { todo in
            // save new todo
            return UserModel(worker: todo).save(on: req)
        }
    }
}

struct CreateWorkerRequest: Content {
    /// Todo title.
    let id: Int?
    let uid: String?
    let name: String?
    let family: String?
    let patronymic: String?
    let phone: String?
    let email: String?
    let birthday: String?
    let position: String?
    let active: Bool?
}

struct WorkerListResult: Content {
    var users: [UserModel]
    var departaments: DepartmentModel
}
