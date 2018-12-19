//
// LegendResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LegendResponse: Codable {

    public var status: String?
    public var code: Int32
    public var legend: Legend?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case legend = "Legend"
    }

    public init(status: String?, code: Int32, legend: Legend?) {
        self.status = status
        self.code = code
        self.legend = legend
    }


}

