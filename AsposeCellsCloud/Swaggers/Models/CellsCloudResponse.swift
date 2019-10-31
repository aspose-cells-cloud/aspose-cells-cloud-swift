//
// CellsCloudResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CellsCloudResponse: Codable {

    public var status: String?
    public var code: Int32

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
    }

    public init(status: String?, code: Int32) {
        self.status = status
        self.code = code
    }


}
