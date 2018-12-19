//
// Hyperlink.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Hyperlink: Codable {

    public var link: Link?
    public var screenTip: String?
    public var area: CellArea?
    public var textToDisplay: String?
    public var address: String?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case screenTip = "ScreenTip"
        case area = "Area"
        case textToDisplay = "TextToDisplay"
        case address = "Address"
    }

    public init(link: Link?, screenTip: String?, area: CellArea?, textToDisplay: String?, address: String?) {
        self.link = link
        self.screenTip = screenTip
        self.area = area
        self.textToDisplay = textToDisplay
        self.address = address
    }


}
