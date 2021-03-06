//
// PivotFiltersResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PivotFiltersResponse: CellsCloudResponse {

    public var pivotFilters: [PivotFilter]?

public enum CodingKeys: String, CodingKey {
        case pivotFilters = "PivotFilters"
    }

    public init(status: String?, code: Int32, pivotFilters: [PivotFilter]?) {
        self.pivotFilters = pivotFilters
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(pivotFilters, forKey: "PivotFilters")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        pivotFilters = try container.decodeIfPresent([PivotFilter].self, forKey: "PivotFilters")
        try super.init(from: decoder)
    }

}

