//
// LineFormat.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LineFormat: Codable {

    public var textureFill: TextureFill?
    public var imageData: String?
    public var patternFill: PatternFill?
    public var solidFill: SolidFill?
    public var gradientFill: GradientFill?
    public var type: String?
    public var beginArrowheadLength: String?
    public var dashStyle: String?
    public var endArrowheadWidth: String?
    public var endArrowheadLength: String?
    public var beginArrowheadWidth: String?
    public var compoundType: String?
    public var joinType: String?
    public var weight: Double?
    public var beginArrowheadStyle: String?
    public var endArrowheadStyle: String?
    public var capType: String?

public enum CodingKeys: String, CodingKey { 
        case textureFill = "TextureFill"
        case imageData = "ImageData"
        case patternFill = "PatternFill"
        case solidFill = "SolidFill"
        case gradientFill = "GradientFill"
        case type = "Type"
        case beginArrowheadLength = "BeginArrowheadLength"
        case dashStyle = "DashStyle"
        case endArrowheadWidth = "EndArrowheadWidth"
        case endArrowheadLength = "EndArrowheadLength"
        case beginArrowheadWidth = "BeginArrowheadWidth"
        case compoundType = "CompoundType"
        case joinType = "JoinType"
        case weight = "Weight"
        case beginArrowheadStyle = "BeginArrowheadStyle"
        case endArrowheadStyle = "EndArrowheadStyle"
        case capType = "CapType"
    }

    public init(textureFill: TextureFill?, imageData: String?, patternFill: PatternFill?, solidFill: SolidFill?, gradientFill: GradientFill?, type: String?, beginArrowheadLength: String?, dashStyle: String?, endArrowheadWidth: String?, endArrowheadLength: String?, beginArrowheadWidth: String?, compoundType: String?, joinType: String?, weight: Double?, beginArrowheadStyle: String?, endArrowheadStyle: String?, capType: String?) {
        self.textureFill = textureFill
        self.imageData = imageData
        self.patternFill = patternFill
        self.solidFill = solidFill
        self.gradientFill = gradientFill
        self.type = type
        self.beginArrowheadLength = beginArrowheadLength
        self.dashStyle = dashStyle
        self.endArrowheadWidth = endArrowheadWidth
        self.endArrowheadLength = endArrowheadLength
        self.beginArrowheadWidth = beginArrowheadWidth
        self.compoundType = compoundType
        self.joinType = joinType
        self.weight = weight
        self.beginArrowheadStyle = beginArrowheadStyle
        self.endArrowheadStyle = endArrowheadStyle
        self.capType = capType
    }


}

