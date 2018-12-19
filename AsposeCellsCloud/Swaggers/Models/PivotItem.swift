//
// PivotItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PivotItem: Codable {

    public var index: Int32?
    /** Represents whether the specified item visible. */
    public var isHidden: Bool?
    /** Gets the name */
    public var name: String?

public enum CodingKeys: String, CodingKey { 
        case index = "Index"
        case isHidden = "IsHidden"
        case name = "Name"
    }

    public init(index: Int32?, isHidden: Bool?, name: String?) {
        self.index = index
        self.isHidden = isHidden
        self.name = name
    }


}

