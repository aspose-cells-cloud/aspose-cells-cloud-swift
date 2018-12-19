//
// ChartArea.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChartArea: Codable {

    public var isInnerMode: Bool?
    public var shapeProperties: [LinkElement]?
    public var autoScaleFont: Bool?
    public var area: Area?
    public var height: Int32?
    public var width: Int32?
    public var backgroundMode: String?
    public var isAutomaticSize: Bool?
    public var Y: Int32?
    public var X: Int32?
    public var shadow: Bool?
    public var font: Font?
    public var border: Line?
    public var link: Link?

public enum CodingKeys: String, CodingKey { 
        case isInnerMode = "IsInnerMode"
        case shapeProperties = "ShapeProperties"
        case autoScaleFont = "AutoScaleFont"
        case area = "Area"
        case height = "Height"
        case width = "Width"
        case backgroundMode = "BackgroundMode"
        case isAutomaticSize = "IsAutomaticSize"
        case Y = "Y"
        case X = "X"
        case shadow = "Shadow"
        case font = "Font"
        case border = "Border"
        case link = "link"
    }

    public init(isInnerMode: Bool?, shapeProperties: [LinkElement]?, autoScaleFont: Bool?, area: Area?, height: Int32?, width: Int32?, backgroundMode: String?, isAutomaticSize: Bool?, Y: Int32?, X: Int32?, shadow: Bool?, font: Font?, border: Line?, link: Link?) {
        self.isInnerMode = isInnerMode
        self.shapeProperties = shapeProperties
        self.autoScaleFont = autoScaleFont
        self.area = area
        self.height = height
        self.width = width
        self.backgroundMode = backgroundMode
        self.isAutomaticSize = isAutomaticSize
        self.Y = Y
        self.X = X
        self.shadow = shadow
        self.font = font
        self.border = border
        self.link = link
    }


}

