//
// CellsDocumentPropertyResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CellsDocumentPropertyResponse: Codable {

    public var status: String?
    public var code: Int32
    public var documentProperty: CellsDocumentProperty?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case documentProperty = "DocumentProperty"
    }

    public init(status: String?, code: Int32, documentProperty: CellsDocumentProperty?) {
        self.status = status
        self.code = code
        self.documentProperty = documentProperty
    }


}
