//
//  OneTask.swift
//  DartTaskManager
//
//  Created by варя on 23/12/2018.
//  Copyright © 2018 варя. All rights reserved.
//
import Crypto
import Vapor

struct Tasks: Content {
    var tasks: [OneTaskModel]
}
struct OneTaskModel: Content {
    var status: String
    var id: Int?
    var title: String
    var firstMessage: Message
    var lastMessage: Message
}

struct Message: Content {
    var priorityId:Int?
    var date: Int?
    var text: String?
    var spendedTime: Int?
    var planTime: Int?
    var authorUid: String?
    var taskStatus: String?
    var endDate: Int?
    var id: Int?
    var userUid: String?
}
