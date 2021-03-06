//
// ConditionalFormattingsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConditionalFormattingsResponse: CellsCloudResponse {

    public var conditionalFormattings: ConditionalFormattings?

public enum CodingKeys: String, CodingKey {
        case conditionalFormattings = "ConditionalFormattings"
    }

    public init(status: String?, code: Int32, conditionalFormattings: ConditionalFormattings?) {
        self.conditionalFormattings = conditionalFormattings
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(conditionalFormattings, forKey: "ConditionalFormattings")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        conditionalFormattings = try container.decodeIfPresent(ConditionalFormattings.self, forKey: "ConditionalFormattings")
        try super.init(from: decoder)
    }

}

