//
// SingleValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SingleValue: Codable {

    public var valueType: ValueType?
    public var value: String?

public enum CodingKeys: String, CodingKey { 
        case valueType = "ValueType"
        case value = "Value"
    }

    public init(valueType: ValueType?, value: String?) {
        self.valueType = valueType
        self.value = value
    }


}
