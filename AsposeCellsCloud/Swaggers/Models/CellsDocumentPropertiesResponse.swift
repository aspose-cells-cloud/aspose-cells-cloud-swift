//
// CellsDocumentPropertiesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CellsDocumentPropertiesResponse: Codable {

    public var status: String?
    public var code: Int32
    public var documentProperties: CellsDocumentProperties?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case documentProperties = "DocumentProperties"
    }

    public init(status: String?, code: Int32, documentProperties: CellsDocumentProperties?) {
        self.status = status
        self.code = code
        self.documentProperties = documentProperties
    }


}

