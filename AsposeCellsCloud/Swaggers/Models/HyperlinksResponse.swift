//
// HyperlinksResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct HyperlinksResponse: Codable {

    public var status: String?
    public var code: Int32
    public var hyperlinks: Hyperlinks?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case hyperlinks = "Hyperlinks"
    }

    public init(status: String?, code: Int32, hyperlinks: Hyperlinks?) {
        self.status = status
        self.code = code
        self.hyperlinks = hyperlinks
    }


}
