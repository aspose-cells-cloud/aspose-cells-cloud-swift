//
// VerticalPageBreaksResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VerticalPageBreaksResponse: Codable {

    public var status: String?
    public var code: Int32
    public var verticalPageBreaks: VerticalPageBreaks?

public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case code = "Code"
        case verticalPageBreaks = "VerticalPageBreaks"
    }

    public init(status: String?, code: Int32, verticalPageBreaks: VerticalPageBreaks?) {
        self.status = status
        self.code = code
        self.verticalPageBreaks = verticalPageBreaks
    }


}

