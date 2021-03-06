//
// CustomParserConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CustomParserConfig: Codable {

    public var columnIndex: Int32?
    public var customStyle: String?
    public var parseMethod: String?

public enum CodingKeys: String, CodingKey { 
        case columnIndex = "ColumnIndex"
        case customStyle = "CustomStyle"
        case parseMethod = "ParseMethod"
    }

    public init(columnIndex: Int32?, customStyle: String?, parseMethod: String?) {
        self.columnIndex = columnIndex
        self.customStyle = customStyle
        self.parseMethod = parseMethod
    }


}

