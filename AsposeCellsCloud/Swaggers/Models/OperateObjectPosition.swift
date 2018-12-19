//
// OperateObjectPosition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OperateObjectPosition: Codable {

    public var chartIndex: Int32?
    public var listObjectIndex: Int32?
    public var sheetName: String?
    public var shapeIndex: Int32?
    public var cellName: String?
    public var workbook: FileSource?

public enum CodingKeys: String, CodingKey { 
        case chartIndex = "ChartIndex"
        case listObjectIndex = "ListObjectIndex"
        case sheetName = "SheetName"
        case shapeIndex = "ShapeIndex"
        case cellName = "CellName"
        case workbook = "Workbook"
    }

    public init(chartIndex: Int32?, listObjectIndex: Int32?, sheetName: String?, shapeIndex: Int32?, cellName: String?, workbook: FileSource?) {
        self.chartIndex = chartIndex
        self.listObjectIndex = listObjectIndex
        self.sheetName = sheetName
        self.shapeIndex = shapeIndex
        self.cellName = cellName
        self.workbook = workbook
    }


}
