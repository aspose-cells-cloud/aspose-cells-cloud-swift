//
// FilesList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Files list */

public struct FilesList: Codable {

    /** Files and folders contained by folder StorageFile. */
    public var value: [StorageFile]?

public enum CodingKeys: String, CodingKey { 
        case value = "Value"
    }

    public init(value: [StorageFile]?) {
        self.value = value
    }


}

