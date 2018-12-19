//
// Columns.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Columns: Codable {

    public var link: Link?
    public var columnsCount: Int32
    public var maxColumn: Int32
    public var columnsList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case columnsCount = "ColumnsCount"
        case maxColumn = "MaxColumn"
        case columnsList = "ColumnsList"
    }

    public init(link: Link?, columnsCount: Int32, maxColumn: Int32, columnsList: [LinkElement]?) {
        self.link = link
        self.columnsCount = columnsCount
        self.maxColumn = maxColumn
        self.columnsList = columnsList
    }


}

