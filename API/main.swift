//
//  main.swift
//  API
//
//  Created by Sinan Özman on 17.01.2021.
//

import Foundation
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()



