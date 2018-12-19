//
// ListObjectOperateParameter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ListObjectOperateParameter: Codable {

    public var operateType: String?
    public var listObject: ListObject?

public enum CodingKeys: String, CodingKey { 
        case operateType = "OperateType"
        case listObject = "ListObject"
    }

    public init(operateType: String?, listObject: ListObject?) {
        self.operateType = operateType
        self.listObject = listObject
    }


}

