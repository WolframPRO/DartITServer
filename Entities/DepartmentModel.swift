//
//  Department.swift
//  DartTaskManager
//
//  Created by варя on 25/10/2018.
//  Copyright © 2018 варя. All rights reserved.
//
import Foundation
import FluentSQLite
import Vapor

struct DepartmentModel: Content {
    let cn: String?
    let name: String?
    let users: [String]?
}
