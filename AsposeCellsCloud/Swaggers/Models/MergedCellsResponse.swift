//
// MergedCellsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MergedCellsResponse: CellsCloudResponse {

    public var mergedCells: MergedCells?

public enum CodingKeys: String, CodingKey {
        case mergedCells = "MergedCells"
    }

    public init(status: String?, code: Int32, mergedCells: MergedCells?) {
        self.mergedCells = mergedCells
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(mergedCells, forKey: "MergedCells")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        mergedCells = try container.decodeIfPresent(MergedCells.self, forKey: "MergedCells")
        try super.init(from: decoder)
    }

}

