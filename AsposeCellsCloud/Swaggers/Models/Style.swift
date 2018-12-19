//
// Style.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Style: Codable {

    public var link: Link?
    public var pattern: String?
    public var textDirection: String?
    public var custom: String?
    public var shrinkToFit: Bool?
    public var isDateTime: Bool?
    public var cultureCustom: String?
    public var rotationAngle: Int32?
    public var indentLevel: Int32?
    public var isPercent: Bool?
    public var foregroundColor: Color?
    public var name: String?
    public var foregroundThemeColor: ThemeColor?
    public var borderCollection: [Border]?
    public var isLocked: Bool?
    public var verticalAlignment: String?
    public var backgroundColor: Color?
    public var backgroundThemeColor: ThemeColor?
    public var isFormulaHidden: Bool?
    public var isGradient: Bool?
    public var number: Int32?
    public var horizontalAlignment: String?
    public var isTextWrapped: Bool?
    public var font: Font?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case pattern = "Pattern"
        case textDirection = "TextDirection"
        case custom = "Custom"
        case shrinkToFit = "ShrinkToFit"
        case isDateTime = "IsDateTime"
        case cultureCustom = "CultureCustom"
        case rotationAngle = "RotationAngle"
        case indentLevel = "IndentLevel"
        case isPercent = "IsPercent"
        case foregroundColor = "ForegroundColor"
        case name = "Name"
        case foregroundThemeColor = "ForegroundThemeColor"
        case borderCollection = "BorderCollection"
        case isLocked = "IsLocked"
        case verticalAlignment = "VerticalAlignment"
        case backgroundColor = "BackgroundColor"
        case backgroundThemeColor = "BackgroundThemeColor"
        case isFormulaHidden = "IsFormulaHidden"
        case isGradient = "IsGradient"
        case number = "Number"
        case horizontalAlignment = "HorizontalAlignment"
        case isTextWrapped = "IsTextWrapped"
        case font = "Font"
    }

    public init(link: Link?, pattern: String?, textDirection: String?, custom: String?, shrinkToFit: Bool?, isDateTime: Bool?, cultureCustom: String?, rotationAngle: Int32?, indentLevel: Int32?, isPercent: Bool?, foregroundColor: Color?, name: String?, foregroundThemeColor: ThemeColor?, borderCollection: [Border]?, isLocked: Bool?, verticalAlignment: String?, backgroundColor: Color?, backgroundThemeColor: ThemeColor?, isFormulaHidden: Bool?, isGradient: Bool?, number: Int32?, horizontalAlignment: String?, isTextWrapped: Bool?, font: Font?) {
        self.link = link
        self.pattern = pattern
        self.textDirection = textDirection
        self.custom = custom
        self.shrinkToFit = shrinkToFit
        self.isDateTime = isDateTime
        self.cultureCustom = cultureCustom
        self.rotationAngle = rotationAngle
        self.indentLevel = indentLevel
        self.isPercent = isPercent
        self.foregroundColor = foregroundColor
        self.name = name
        self.foregroundThemeColor = foregroundThemeColor
        self.borderCollection = borderCollection
        self.isLocked = isLocked
        self.verticalAlignment = verticalAlignment
        self.backgroundColor = backgroundColor
        self.backgroundThemeColor = backgroundThemeColor
        self.isFormulaHidden = isFormulaHidden
        self.isGradient = isGradient
        self.number = number
        self.horizontalAlignment = horizontalAlignment
        self.isTextWrapped = isTextWrapped
        self.font = font
    }


}
