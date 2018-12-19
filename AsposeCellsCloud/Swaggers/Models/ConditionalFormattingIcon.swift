//
// ConditionalFormattingIcon.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ConditionalFormattingIcon: Codable {

    /** Gets and sets the icon&#39;s index in the icon set.              */
    public var index: Int32?
    /** Gets and sets the icon set type.              */
    public var type: String?
    /** Gets the icon set data.              */
    public var imageData: String?

public enum CodingKeys: String, CodingKey { 
        case index = "Index"
        case type = "Type"
        case imageData = "ImageData"
    }

    public init(index: Int32?, type: String?, imageData: String?) {
        self.index = index
        self.type = type
        self.imageData = imageData
    }


}

