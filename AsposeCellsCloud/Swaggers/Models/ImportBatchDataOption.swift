//
// ImportBatchDataOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ImportBatchDataOption: Codable {

    public var source: FileSource?
    public var importDataType: String?
    public var destinationWorksheet: String?
    public var isInsert: Bool?
    public var batchData: [CellValue]?

public enum CodingKeys: String, CodingKey { 
        case source = "Source"
        case importDataType = "ImportDataType"
        case destinationWorksheet = "DestinationWorksheet"
        case isInsert = "IsInsert"
        case batchData = "BatchData"
    }

    public init(source: FileSource?, importDataType: String?, destinationWorksheet: String?, isInsert: Bool?, batchData: [CellValue]?) {
        self.source = source
        self.importDataType = importDataType
        self.destinationWorksheet = destinationWorksheet
        self.isInsert = isInsert
        self.batchData = batchData
    }


}
