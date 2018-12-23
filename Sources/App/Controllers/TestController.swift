//
//  TestController.swift
//  2019-New-Year-Event-WebPackageDescription
//
//  Created by Jerry Yan on 12/22/18.
//

import Vapor

final class TestController {
    func hello(_ req: Request) throws -> String {
        return "Welcome to TestController!"
    }
}
