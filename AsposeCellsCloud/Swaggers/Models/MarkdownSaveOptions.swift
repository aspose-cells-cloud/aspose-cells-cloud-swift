//
// MarkdownSaveOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MarkdownSaveOptions: Codable {

    public var enableHTTPCompression: Bool?
    public var saveFormat: String?
    /** Make the workbook empty after saving the file. */
    public var clearData: Bool?
    /** The cached file folder is used to store some large data. */
    public var cachedFileFolder: String?
    /** Indicates whether validate merged areas before saving the file. The default value is false.              */
    public var validateMergedAreas: Bool?
    public var refreshChartCache: Bool?
    /** If true and the directory does not exist, the directory will be automatically created before saving the file.              */
    public var createDirectory: Bool?
    public var sortNames: Bool?
    public var encoding: String?
    public var formatStrategy: String?
    public var lineSeparator: String?

public enum CodingKeys: String, CodingKey { 
        case enableHTTPCompression = "EnableHTTPCompression"
        case saveFormat = "SaveFormat"
        case clearData = "ClearData"
        case cachedFileFolder = "CachedFileFolder"
        case validateMergedAreas = "ValidateMergedAreas"
        case refreshChartCache = "RefreshChartCache"
        case createDirectory = "CreateDirectory"
        case sortNames = "SortNames"
        case encoding = "Encoding"
        case formatStrategy = "FormatStrategy"
        case lineSeparator = "LineSeparator"
    }

    public init(enableHTTPCompression: Bool?, saveFormat: String?, clearData: Bool?, cachedFileFolder: String?, validateMergedAreas: Bool?, refreshChartCache: Bool?, createDirectory: Bool?, sortNames: Bool?, encoding: String?, formatStrategy: String?, lineSeparator: String?) {
        self.enableHTTPCompression = enableHTTPCompression
        self.saveFormat = saveFormat
        self.clearData = clearData
        self.cachedFileFolder = cachedFileFolder
        self.validateMergedAreas = validateMergedAreas
        self.refreshChartCache = refreshChartCache
        self.createDirectory = createDirectory
        self.sortNames = sortNames
        self.encoding = encoding
        self.formatStrategy = formatStrategy
        self.lineSeparator = lineSeparator
    }


}

