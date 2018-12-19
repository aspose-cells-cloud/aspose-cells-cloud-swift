//
// PivotFiltersResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PivotFiltersResponse: Codable {

    public var status: String?
    public var code: Int32
    public var pivotFilters: [PivotFilter]?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case pivotFilters = "PivotFilters"
    }

    public init(status: String?, code: Int32, pivotFilters: [PivotFilter]?) {
        self.status = status
        self.code = code
        self.pivotFilters = pivotFilters
    }


}

