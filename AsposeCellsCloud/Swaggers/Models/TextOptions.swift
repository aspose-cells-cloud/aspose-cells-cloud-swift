//
// TextOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TextOptions: Codable {

    public var isItalic: Bool?
    public var name: String?
    public var doubleSize: Double?
    public var color: Color?
    public var isBold: Bool?
    public var isSubscript: Bool?
    public var isSuperscript: Bool?
    public var isStrikeout: Bool?
    public var underline: String?
    public var size: Int32?
    public var outline: LineFormat?
    public var spacing: Double?
    public var kerning: Double?
    public var shadow: ShadowEffect?
    public var fill: FillFormat?
    public var underlineColor: CellsColor?

public enum CodingKeys: String, CodingKey { 
        case isItalic = "IsItalic"
        case name = "Name"
        case doubleSize = "DoubleSize"
        case color = "Color"
        case isBold = "IsBold"
        case isSubscript = "IsSubscript"
        case isSuperscript = "IsSuperscript"
        case isStrikeout = "IsStrikeout"
        case underline = "Underline"
        case size = "Size"
        case outline = "Outline"
        case spacing = "Spacing"
        case kerning = "Kerning"
        case shadow = "Shadow"
        case fill = "Fill"
        case underlineColor = "UnderlineColor"
    }

    public init(isItalic: Bool?, name: String?, doubleSize: Double?, color: Color?, isBold: Bool?, isSubscript: Bool?, isSuperscript: Bool?, isStrikeout: Bool?, underline: String?, size: Int32?, outline: LineFormat?, spacing: Double?, kerning: Double?, shadow: ShadowEffect?, fill: FillFormat?, underlineColor: CellsColor?) {
        self.isItalic = isItalic
        self.name = name
        self.doubleSize = doubleSize
        self.color = color
        self.isBold = isBold
        self.isSubscript = isSubscript
        self.isSuperscript = isSuperscript
        self.isStrikeout = isStrikeout
        self.underline = underline
        self.size = size
        self.outline = outline
        self.spacing = spacing
        self.kerning = kerning
        self.shadow = shadow
        self.fill = fill
        self.underlineColor = underlineColor
    }


}

