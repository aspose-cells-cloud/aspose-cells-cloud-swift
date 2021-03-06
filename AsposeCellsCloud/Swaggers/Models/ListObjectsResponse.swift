//
// ListObjectsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ListObjectsResponse: CellsCloudResponse {

    public var listObjects: ListObjects?

public enum CodingKeys: String, CodingKey {
        case listObjects = "ListObjects"
    }

    public init(status: String?, code: Int32, listObjects: ListObjects?) {
        self.listObjects = listObjects
        super.init(status: status, code: code)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(listObjects, forKey: "ListObjects")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        listObjects = try container.decodeIfPresent(ListObjects.self, forKey: "ListObjects")
        try super.init(from: decoder)
    }

}

