//
//  Comment.swift
//  App
//
//  Created by Jerry Yan on 12/23/18.
//

import FluentPostgreSQL
import Vapor

final class Comment: PostgreSQLModel {
    
    var id: Int?
    var content: String
    var location: Location?
    var name: String?
    var time: Date
    
    init(id: Int? = nil, content: String, location: Location? = nil, name: String? = nil, time: Date = Date()) {
        self.id = id
        self.content = content
        self.location = location
        self.name = name
        self.time = time
    }
}

extension Comment: Migration { }

extension Comment: Content {}

extension Comment: Parameter { }
