//
// ValidationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ValidationResponse: CellsCloudResponse {

    public var validation: Validation?

public enum CodingKeys: String, CodingKey {
        case validation = "Validation"
    }

    public init(status: String?, code: Int32, validation: Validation?) {
        self.validation = validation
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(validation, forKey: "Validation")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        validation = try container.decodeIfPresent(Validation.self, forKey: "Validation")
        try super.init(from: decoder)
    }


}

