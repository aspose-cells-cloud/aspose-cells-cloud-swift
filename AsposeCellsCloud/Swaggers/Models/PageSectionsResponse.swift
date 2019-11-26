//
// PageSectionsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PageSectionsResponse: CellsCloudResponse {

    public var pageSections: [PageSection]?

public enum CodingKeys: String, CodingKey {
        case pageSections = "PageSections"
    }

    public init(status: String?, code: Int32, pageSections: [PageSection]?) {
        self.pageSections = pageSections
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(pageSections, forKey: "PageSections")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        pageSections = try container.decodeIfPresent([PageSection].self, forKey: "PageSections")
        try super.init(from: decoder)
    }

}

