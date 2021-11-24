//
// FileInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FileInfo: Codable {

    public var filename: String?
    public var fileSize: Int64
    public var fileContent: String?

public enum CodingKeys: String, CodingKey { 
        case filename = "Filename"
        case fileSize = "FileSize"
        case fileContent = "FileContent"
    }

    public init(filename: String?, fileSize: Int64, fileContent: String?) {
        self.filename = filename
        self.fileSize = fileSize
        self.fileContent = fileContent
    }


}

