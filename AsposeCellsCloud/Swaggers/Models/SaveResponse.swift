//
// SaveResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SaveResponse: CellsCloudResponse {

    public var saveResult: SaveResult?

public enum CodingKeys: String, CodingKey {
        case saveResult = "SaveResult"
    }

    public init(status: String?, code: Int32, saveResult: SaveResult?) {
        self.saveResult = saveResult
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(saveResult, forKey: "SaveResult")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        saveResult = try container.decodeIfPresent(SaveResult.self, forKey: "SaveResult")
        try super.init(from: decoder)
    }

}

