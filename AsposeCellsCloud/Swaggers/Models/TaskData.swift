//
// TaskData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TaskData: Codable {

    public var tasks: [TaskDescription]?

public enum CodingKeys: String, CodingKey { 
        case tasks = "Tasks"
    }

    public init(tasks: [TaskDescription]?) {
        self.tasks = tasks
    }


}
