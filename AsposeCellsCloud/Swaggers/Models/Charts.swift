//
// Charts.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Charts: Codable {

    public var link: Link?
    public var chartList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case chartList = "ChartList"
    }

    public init(link: Link?, chartList: [LinkElement]?) {
        self.link = link
        self.chartList = chartList
    }


}
