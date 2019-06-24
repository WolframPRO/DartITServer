//
//  TasksCreater.swift
//  App
//
//  Created by Владимир on 24/06/2019.
//

import Foundation
import Crypto
import Vapor

class TasksCreater {
    func createTasks() -> Tasks {
        return Tasks(tasks: [
            OneTaskModel(status: "Выполняется",
                         id: 1244,
                         title: "Полить цветы",
                         firstMessage: Message(priorityId: 1,
                                               date: 235412412,
                                               text: "Сходить и полить цветочки",
                                               spendedTime: 0,
                                               planTime: 120,
                                               authorUid: "petrov-vm@dartit.ru",
                                               taskStatus: "Выполняется",
                                               endDate: 32412412,
                                               id: 1423342,
                                               userUid: "petrov-vm@dartit.ru"),
                         lastMessage: Message(priorityId: 1,
                                              date: 235412412,
                                              text: "Сходить и полить цветочки",
                                              spendedTime: 0,
                                              planTime: 120,
                                              authorUid: "petrov-vm@dartit.ru",
                                              taskStatus: "Выполняется",
                                              endDate: 32412412,
                                              id: 1423342,
                                              userUid: "petrov-vm@dartit.ru")),
            OneTaskModel(status: "В работе",
                         id: 52234,
                         title: "Работа с территориями",
                         firstMessage: Message(priorityId: 1,
                                               date: 235412412,
                                               text: "Сходить и полить цветочки",
                                               spendedTime: 0,
                                               planTime: 120,
                                               authorUid: "petrov-vm@dartit.ru",
                                               taskStatus: "Выполняется",
                                               endDate: 32412412,
                                               id: 1423342,
                                               userUid: "petrov-vm@dartit.ru"),
                         lastMessage: Message(priorityId: 1,
                                              date: 235412412,
                                              text: "Сходить и полить цветочки",
                                              spendedTime: 0,
                                              planTime: 120,
                                              authorUid: "petrov-vm@dartit.ru",
                                              taskStatus: "Выполняется",
                                              endDate: 32412412,
                                              id: 1423342,
                                              userUid: "petrov-vm@dartit.ru")),
            OneTaskModel(status: "Обратная связь",
                         id: 5234,
                         title: "Ссылка для веб-версии МЛК",
                         firstMessage: Message(priorityId: 1,
                                               date: 235412412,
                                               text: "Сходить и полить цветочки",
                                               spendedTime: 0,
                                               planTime: 120,
                                               authorUid: "petrov-vm@dartit.ru",
                                               taskStatus: "Выполняется",
                                               endDate: 32412412,
                                               id: 1423342,
                                               userUid: "petrov-vm@dartit.ru"),
                         lastMessage: Message(priorityId: 1,
                                              date: 235412412,
                                              text: "Сходить и полить цветочки",
                                              spendedTime: 0,
                                              planTime: 120,
                                              authorUid: "petrov-vm@dartit.ru",
                                              taskStatus: "Выполняется",
                                              endDate: 32412412,
                                              id: 1423342,
                                              userUid: "petrov-vm@dartit.ru"))])
    }
}