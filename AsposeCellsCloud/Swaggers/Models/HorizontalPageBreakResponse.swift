//
// HorizontalPageBreakResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class HorizontalPageBreakResponse: CellsCloudResponse {

    public var horizontalPageBreak: HorizontalPageBreak?

public enum CodingKeys: String, CodingKey {
        case horizontalPageBreak = "HorizontalPageBreak"
    }

    public init(status: String?, code: Int32, horizontalPageBreak: HorizontalPageBreak?) {
        self.horizontalPageBreak = horizontalPageBreak
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(horizontalPageBreak, forKey: "HorizontalPageBreak")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        horizontalPageBreak = try container.decodeIfPresent(HorizontalPageBreak.self, forKey: "HorizontalPageBreak")
        try super.init(from: decoder)
    }

}

