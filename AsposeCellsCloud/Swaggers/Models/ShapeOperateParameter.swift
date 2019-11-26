//
// ShapeOperateParameter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ShapeOperateParameter: OperateParameter {

    public var shape: Shape?

public enum CodingKeys: String, CodingKey {
        case shape = "Shape"
    }

    public init(operateType: String?, shape: Shape?) {
        self.shape = shape
        super.init(operateType: operateType)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(shape, forKey: "Shape")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        shape = try container.decodeIfPresent(Shape.self, forKey: "Shape")
        try super.init(from: decoder)
    }

}

