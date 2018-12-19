//
// PasteOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PasteOptions: Codable {

    public var pasteType: String?
    public var skipBlanks: Bool?
    public var onlyVisibleCells: Bool?
    public var transpose: Bool?

public enum CodingKeys: String, CodingKey { 
        case pasteType = "PasteType"
        case skipBlanks = "SkipBlanks"
        case onlyVisibleCells = "OnlyVisibleCells"
        case transpose = "Transpose"
    }

    public init(pasteType: String?, skipBlanks: Bool?, onlyVisibleCells: Bool?, transpose: Bool?) {
        self.pasteType = pasteType
        self.skipBlanks = skipBlanks
        self.onlyVisibleCells = onlyVisibleCells
        self.transpose = transpose
    }


}

