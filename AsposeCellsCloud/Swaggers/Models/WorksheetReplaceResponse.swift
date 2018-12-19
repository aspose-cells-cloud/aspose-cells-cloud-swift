//
// WorksheetReplaceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorksheetReplaceResponse: Codable {

    public var status: String?
    public var code: Int32
    public var matches: Int32
    public var worksheet: LinkElement?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case matches = "Matches"
        case worksheet = "Worksheet"
    }

    public init(status: String?, code: Int32, matches: Int32, worksheet: LinkElement?) {
        self.status = status
        self.code = code
        self.matches = matches
        self.worksheet = worksheet
    }


}

