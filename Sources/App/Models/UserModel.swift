//
//  User.swift
//  DartTaskManager
//
//  Created by варя on 25/10/2018.
//  Copyright © 2018 варя. All rights reserved.
//
import FluentSQLite
import Vapor

struct UserModel: SQLiteModel, Codable {
    var id: Int?
    var uid: String?
    var name: String?
    var family: String?
    var patronymic: String?
    var phone: String?
    var email: String?
    var birthday: String?
    var position: String?
    var active: Bool?
    
    /// Creates a new `Todo`.
    init(id: Int? = nil,
        uid: String?,
        name: String?,
        family: String?,
        patronymic: String?,
        phone: String?,
        email: String?,
        birthday: String?,
        position: String?,
        active: Bool?) {
        
        self.id = id
        self.uid = uid
        self.name = name
        self.family = family
        self.patronymic = patronymic
        self.phone = phone
        self.email = email
        self.birthday = birthday
        self.position = position
        self.active = active
    }
    
    init(worker: CreateWorkerRequest){
        self.id = nil
        self.uid = worker.uid
        self.name = worker.name
        self.family = worker.family
        self.patronymic = worker.patronymic
        self.phone = worker.phone
        self.email = worker.email
        self.birthday = worker.birthday
        self.position = worker.position
        self.active = worker.active
    }
}

/// Allows `Todo` to be used as a Fluent migration.
extension UserModel: Migration {
    static func prepare(on conn: SQLiteConnection) -> Future<Void> {
        return SQLiteDatabase.create(UserModel.self, on: conn) { builder in
            builder.field(for: \.id, isIdentifier: true)
            builder.field(for: \.uid)
            builder.field(for: \.name)
            builder.field(for: \.family)
            builder.field(for: \.patronymic)
            builder.field(for: \.phone)
            builder.field(for: \.email)
            builder.field(for: \.birthday)
            builder.field(for: \.position)
            builder.field(for: \.active)
        }
    }
}

/// Allows `Todo` to be encoded to and decoded from HTTP messages.
extension UserModel: Content { }

/// Allows `Todo` to be used as a dynamic parameter in route definitions.
extension UserModel: Parameter { }
