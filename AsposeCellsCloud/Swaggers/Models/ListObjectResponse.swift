//
// ListObjectResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ListObjectResponse: Codable {

    public var status: String?
    public var code: Int32
    public var listObject: ListObject?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case listObject = "ListObject"
    }

    public init(status: String?, code: Int32, listObject: ListObject?) {
        self.status = status
        self.code = code
        self.listObject = listObject
    }


}

