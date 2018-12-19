//
// Comment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Comment: Codable {

    public var link: Link?
    public var autoSize: Bool?
    public var author: String?
    public var isVisible: Bool?
    public var textOrientationType: String?
    public var height: Int32?
    public var note: String?
    public var width: Int32?
    public var textVerticalAlignment: String?
    public var cellName: String?
    public var htmlNote: String?
    public var textHorizontalAlignment: String?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case autoSize = "AutoSize"
        case author = "Author"
        case isVisible = "IsVisible"
        case textOrientationType = "TextOrientationType"
        case height = "Height"
        case note = "Note"
        case width = "Width"
        case textVerticalAlignment = "TextVerticalAlignment"
        case cellName = "CellName"
        case htmlNote = "HtmlNote"
        case textHorizontalAlignment = "TextHorizontalAlignment"
    }

    public init(link: Link?, autoSize: Bool?, author: String?, isVisible: Bool?, textOrientationType: String?, height: Int32?, note: String?, width: Int32?, textVerticalAlignment: String?, cellName: String?, htmlNote: String?, textHorizontalAlignment: String?) {
        self.link = link
        self.autoSize = autoSize
        self.author = author
        self.isVisible = isVisible
        self.textOrientationType = textOrientationType
        self.height = height
        self.note = note
        self.width = width
        self.textVerticalAlignment = textVerticalAlignment
        self.cellName = cellName
        self.htmlNote = htmlNote
        self.textHorizontalAlignment = textHorizontalAlignment
    }


}
