//
// SparklineGroupResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SparklineGroupResponse: CellsCloudResponse {

    public var sparklineGroup: SparklineGroup?

public enum CodingKeys: String, CodingKey {
        case sparklineGroup = "SparklineGroup"
    }

    public init(status: String?, code: Int32, sparklineGroup: SparklineGroup?) {
        self.sparklineGroup = sparklineGroup
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(sparklineGroup, forKey: "SparklineGroup")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        sparklineGroup = try container.decodeIfPresent(SparklineGroup.self, forKey: "SparklineGroup")
        try super.init(from: decoder)
    }
    
}

