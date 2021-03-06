//
// PivotTableResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PivotTableResponse: CellsCloudResponse {

    public var pivotTable: PivotTable?

public enum CodingKeys: String, CodingKey {
        case pivotTable = "PivotTable"
    }

    public init(status: String?, code: Int32, pivotTable: PivotTable?) {
        self.pivotTable = pivotTable
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(pivotTable, forKey: "PivotTable")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        pivotTable = try container.decodeIfPresent(PivotTable.self, forKey: "PivotTable")
        try super.init(from: decoder)
    }


}

