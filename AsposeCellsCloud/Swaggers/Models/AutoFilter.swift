//
// AutoFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AutoFilter: Codable {

    public var link: Link?
    public var range: String?
    public var filterColumns: [FilterColumn]?
    public var sorter: DataSorter?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case range = "Range"
        case filterColumns = "FilterColumns"
        case sorter = "Sorter"
    }

    public init(link: Link?, range: String?, filterColumns: [FilterColumn]?, sorter: DataSorter?) {
        self.link = link
        self.range = range
        self.filterColumns = filterColumns
        self.sorter = sorter
    }


}

