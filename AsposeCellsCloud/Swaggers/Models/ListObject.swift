//
// ListObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ListObject: Codable {

    public var link: Link?
    /** Gets and sets whether this ListObject show total row. */
    public var showTotals: Bool?
    /** Gets and the built-in table style. */
    public var tableStyleType: String?
    /** Gets and sets the display name.Gets the data range of the ListObject. */
    public var displayName: String?
    /** Gets and sets whether this ListObject show header row.              */
    public var showHeaderRow: Bool?
    /** Gets the start column of the range. */
    public var startColumn: Int32?
    /** Indicates whether the last column in the table should have the style applied. */
    public var showTableStyleLastColumn: Bool?
    /** Indicates whether column stripe formatting is applied. */
    public var showTableStyleColumnStripes: Bool?
    /** Inidicates whether the first column in the table should have the style applied. */
    public var showTableStyleFirstColumn: Bool?
    /** Gets the start row of the range. */
    public var startRow: Int32?
    /** Gets auto filter.              */
    public var autoFilter: AutoFilter?
    /** Indicates whether row stripe formatting is applied. */
    public var showTableStyleRowStripes: Bool?
    /** Gets the end column of the range. */
    public var endColumn: Int32?
    /** Gets and sets the table style name. */
    public var tableStyleName: String?
    /** Gets ListColumns of the ListObject. */
    public var listColumns: [ListColumn]?
    /** Gets the end row of the range. */
    public var endRow: Int32?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case showTotals = "ShowTotals"
        case tableStyleType = "TableStyleType"
        case displayName = "DisplayName"
        case showHeaderRow = "ShowHeaderRow"
        case startColumn = "StartColumn"
        case showTableStyleLastColumn = "ShowTableStyleLastColumn"
        case showTableStyleColumnStripes = "ShowTableStyleColumnStripes"
        case showTableStyleFirstColumn = "ShowTableStyleFirstColumn"
        case startRow = "StartRow"
        case autoFilter = "AutoFilter"
        case showTableStyleRowStripes = "ShowTableStyleRowStripes"
        case endColumn = "EndColumn"
        case tableStyleName = "TableStyleName"
        case listColumns = "ListColumns"
        case endRow = "EndRow"
    }

    public init(link: Link?, showTotals: Bool?, tableStyleType: String?, displayName: String?, showHeaderRow: Bool?, startColumn: Int32?, showTableStyleLastColumn: Bool?, showTableStyleColumnStripes: Bool?, showTableStyleFirstColumn: Bool?, startRow: Int32?, autoFilter: AutoFilter?, showTableStyleRowStripes: Bool?, endColumn: Int32?, tableStyleName: String?, listColumns: [ListColumn]?, endRow: Int32?) {
        self.link = link
        self.showTotals = showTotals
        self.tableStyleType = tableStyleType
        self.displayName = displayName
        self.showHeaderRow = showHeaderRow
        self.startColumn = startColumn
        self.showTableStyleLastColumn = showTableStyleLastColumn
        self.showTableStyleColumnStripes = showTableStyleColumnStripes
        self.showTableStyleFirstColumn = showTableStyleFirstColumn
        self.startRow = startRow
        self.autoFilter = autoFilter
        self.showTableStyleRowStripes = showTableStyleRowStripes
        self.endColumn = endColumn
        self.tableStyleName = tableStyleName
        self.listColumns = listColumns
        self.endRow = endRow
    }


}

