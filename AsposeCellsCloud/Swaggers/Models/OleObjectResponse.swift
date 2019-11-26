//
// OleObjectResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class OleObjectResponse: CellsCloudResponse {

    public var oleObject: OleObject?

public enum CodingKeys: String, CodingKey {
        case oleObject = "OleObject"
    }

    public init(status: String?, code: Int32, oleObject: OleObject?) {
        self.oleObject = oleObject
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(oleObject, forKey: "OleObject")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        oleObject = try container.decodeIfPresent(OleObject.self, forKey: "OleObject")
        try super.init(from: decoder)
    }

}

