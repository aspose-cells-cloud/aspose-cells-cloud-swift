//
// ColumnsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ColumnsResponse: Codable {

    public var status: String?
    public var code: Int32
    public var columns: Columns?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case columns = "Columns"
    }

    public init(status: String?, code: Int32, columns: Columns?) {
        self.status = status
        self.code = code
        self.columns = columns
    }


}

