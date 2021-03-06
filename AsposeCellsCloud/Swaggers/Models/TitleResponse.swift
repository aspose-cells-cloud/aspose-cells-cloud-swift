//
// TitleResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TitleResponse: CellsCloudResponse {

    public var title: Title?

public enum CodingKeys: String, CodingKey {
        case title = "Title"
    }

    public init(status: String?, code: Int32, title: Title?) {
        self.title = title
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(title, forKey: "Title")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        title = try container.decodeIfPresent(Title.self, forKey: "Title")
        try super.init(from: decoder)
    }

}

