//
// ImportIntArrayOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ImportIntArrayOption: ImportOption {

    //public var source: FileSource?
    //public var importDataType: String?
    //public var destinationWorksheet: String?
    //public var isInsert: Bool?
    public var data: [Int32]?
    public var isVertical: Bool?
    public var firstRow: Int32?
    public var firstColumn: Int32?

public enum CodingKeys: String, CodingKey { 
        //case source = "Source"
        //case importDataType = "ImportDataType"
        //case destinationWorksheet = "DestinationWorksheet"
        //case isInsert = "IsInsert"
        case data = "Data"
        case isVertical = "IsVertical"
        case firstRow = "FirstRow"
        case firstColumn = "FirstColumn"
    }

    public init(source: FileSource?, importDataType: String?, destinationWorksheet: String?, isInsert: Bool?, data: [Int32]?, isVertical: Bool?, firstRow: Int32?, firstColumn: Int32?) {
        super.init(source: source, importDataType: importDataType, destinationWorksheet: destinationWorksheet, isInsert: isInsert)
        //self.source = source
        //self.importDataType = importDataType
        //self.destinationWorksheet = destinationWorksheet
        //self.isInsert = isInsert
        self.data = data
        self.isVertical = isVertical
        self.firstRow = firstRow
        self.firstColumn = firstColumn
        
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(data, forKey: "Data")
        try container.encodeIfPresent(isVertical, forKey: "IsVertical")
        try container.encodeIfPresent(firstRow, forKey: "FirstRow")
        try container.encodeIfPresent(firstColumn, forKey: "FirstColumn")
        try super.encode(to: encoder)
    }
    
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        data = try container.decodeIfPresent([Int32].self, forKey: "Data")
        isVertical = try container.decodeIfPresent(Bool.self, forKey: "IsVertical")
        firstRow = try container.decodeIfPresent(Int32.self, forKey: "FirstRow")
        firstColumn = try container.decodeIfPresent(Int32.self, forKey: "FirstColumn")
        try super.init(from: decoder)
    }
}
