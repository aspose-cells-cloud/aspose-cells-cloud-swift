//
// Cells.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Cells: Codable {

    public var link: Link?
    public var rows: LinkElement?
    public var cellCount: Int32
    public var maxRow: Int32
    public var cellList: [LinkElement]?
    /** Maximum column index of cell which contains data.              */
    public var maxColumn: Int32
    public var columns: LinkElement?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case rows = "Rows"
        case cellCount = "CellCount"
        case maxRow = "MaxRow"
        case cellList = "CellList"
        case maxColumn = "MaxColumn"
        case columns = "Columns"
    }

    public init(link: Link?, rows: LinkElement?, cellCount: Int32, maxRow: Int32, cellList: [LinkElement]?, maxColumn: Int32, columns: LinkElement?) {
        self.link = link
        self.rows = rows
        self.cellCount = cellCount
        self.maxRow = maxRow
        self.cellList = cellList
        self.maxColumn = maxColumn
        self.columns = columns
    }


}

