//
// PivotFilterResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PivotFilterResponse: Codable {

    public var status: String?
    public var code: Int32
    public var pivotFilter: PivotFilter?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case pivotFilter = "PivotFilter"
    }

    public init(status: String?, code: Int32, pivotFilter: PivotFilter?) {
        self.status = status
        self.code = code
        self.pivotFilter = pivotFilter
    }


}
