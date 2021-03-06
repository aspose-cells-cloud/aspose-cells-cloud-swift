//
// SaveResultTaskParameter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SaveResultTaskParameter: TaskParameter {

    public var resultSource: String?
    public var resultDestination: ResultDestination?

public enum CodingKeys: String, CodingKey { 
        case resultSource = "ResultSource"
        case resultDestination = "ResultDestination"
    }

    public init(resultSource: String?, resultDestination: ResultDestination?) {
        self.resultSource = resultSource
        self.resultDestination = resultDestination
        super.init()
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(resultSource, forKey: "ResultSource")
        try container.encodeIfPresent(resultDestination, forKey: "ResultDestination")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        resultSource = try container.decodeIfPresent(String.self, forKey: "ResultSource")
        resultDestination = try container.decodeIfPresent(ResultDestination.self, forKey: "ResultDestination")
        try super.init(from: decoder)
    }

}

