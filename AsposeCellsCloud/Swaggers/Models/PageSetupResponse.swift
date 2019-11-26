//
// PageSetupResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PageSetupResponse: CellsCloudResponse {

    public var pageSetup: PageSetup?

public enum CodingKeys: String, CodingKey {
        case pageSetup = "PageSetup"
    }

    public init(status: String?, code: Int32, pageSetup: PageSetup?) {
        self.pageSetup = pageSetup
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(pageSetup, forKey: "PageSetup")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        pageSetup = try container.decodeIfPresent(PageSetup.self, forKey: "PageSetup")
        try super.init(from: decoder)
    }

}

