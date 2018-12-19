//
// MergedCell.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MergedCell: Codable {

    public var link: Link?
    public var startRow: Int32
    public var startColumn: Int32
    public var endColumn: Int32
    public var endRow: Int32

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case startRow = "StartRow"
        case startColumn = "StartColumn"
        case endColumn = "EndColumn"
        case endRow = "EndRow"
    }

    public init(link: Link?, startRow: Int32, startColumn: Int32, endColumn: Int32, endRow: Int32) {
        self.link = link
        self.startRow = startRow
        self.startColumn = startColumn
        self.endColumn = endColumn
        self.endRow = endRow
    }


}

