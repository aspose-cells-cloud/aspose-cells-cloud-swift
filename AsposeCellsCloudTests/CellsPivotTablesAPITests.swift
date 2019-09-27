//
// CellsPivotTablesAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsPivotTablesAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsPivotTablesAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsPivotTablesAPITestsSetUp")
			    return
			}
			expectation.fulfill() 
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)
	}
	
	override func tearDown() 
	{
		// Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
	}

	func testcellsPivotTablesDeletePivotTableField() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesDeletePivotTableField")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let pivotFieldType:String = "row"
        let ia1:[Int32]? = [1]
		let request:PivotTableFieldRequest? = PivotTableFieldRequest(data: ia1)
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesDeletePivotTableField(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, pivotFieldType: pivotFieldType, request: request, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesDeletePivotTableField")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesDeleteWorksheetPivotTable() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesDeleteWorksheetPivotTable")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesDeleteWorksheetPivotTable(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesDeleteWorksheetPivotTable")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesDeleteWorksheetPivotTableFilter() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesDeleteWorksheetPivotTableFilter")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let fieldIndex:Int32 = 0
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesDeleteWorksheetPivotTableFilter(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, fieldIndex: fieldIndex, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesDeleteWorksheetPivotTableFilter")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesDeleteWorksheetPivotTableFilters() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesDeleteWorksheetPivotTableFilters")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesDeleteWorksheetPivotTableFilters(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesDeleteWorksheetPivotTableFilters")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesDeleteWorksheetPivotTables() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesDeleteWorksheetPivotTables")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesDeleteWorksheetPivotTables(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesDeleteWorksheetPivotTables")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesGetPivotTableField() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesGetPivotTableField")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let pivotFieldIndex:Int32 = 0
		let pivotFieldType:String = "Row"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesGetPivotTableField(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, pivotFieldIndex: pivotFieldIndex, pivotFieldType: pivotFieldType, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesGetPivotTableField")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesGetWorksheetPivotTable() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesGetWorksheetPivotTable")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivottableIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesGetWorksheetPivotTable(name: name, sheetName: sheetName, pivottableIndex: pivottableIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesGetWorksheetPivotTable")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}
    
    func testcellsPivotTablesGetWorksheetPivotTableFilter()
    {
        let expectation = self.expectation(description: "testcellsPivotTablesGetWorksheetPivotTableFilter")
        let name:String = PivTestFile
        let sheetName:String = SHEET4
        let pivotTableIndex:Int32 = 0
        
        let top10Filter:Top10Filter = Top10Filter(items: 1, isPercent: false, isTop: true, criteria: nil)
        let filterColumn:FilterColumn = FilterColumn(filterType: "Top10", multipleFilters: nil, customFilters: nil, dynamicFilter: nil, colorFilter: nil, fieldIndex: 0, top10Filter: top10Filter, iconFilter: nil, visibledropdown: nil)
        let filterColumns: [FilterColumn] = [filterColumn]
        let autoFilter: AutoFilter = AutoFilter(link: nil, range: nil, filterColumns: filterColumns, sorter: nil)
        let filter:PivotFilter? = PivotFilter(evaluationOrder: nil, name: nil, filterType: "Count", autoFilter: autoFilter, fieldIndex: 1, measureFldIndex: nil, value1: nil, memberPropertyFieldIndex: nil, value2: nil)
        
        let needReCalculate:Bool? = true
        let filterIndex:Int32 = 0
        let folder:String = TEMPFOLDER
        let storage:String? = nil
        
        uploadFile(name: name) {
            
            CellsAPI.cellsPivotTablesPutWorksheetPivotTableFilter(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, filter: filter, needReCalculate: needReCalculate, folder: folder, storage: storage)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testcellsPivotTablesPutWorksheetPivotTableFilter")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    
                    CellsAPI.cellsPivotTablesGetWorksheetPivotTableFilter(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, filterIndex: filterIndex, folder: folder, storage: storage)
                    {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testcellsPivotTablesGetWorksheetPivotTableFilter")
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, 200)
                        }
                    }
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

	func testcellsPivotTablesGetWorksheetPivotTableFilters()
	{
		let expectation = self.expectation(description: "testcellsPivotTablesGetWorksheetPivotTableFilters")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesGetWorksheetPivotTableFilters(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesGetWorksheetPivotTableFilters")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesGetWorksheetPivotTables() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesGetWorksheetPivotTables")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesGetWorksheetPivotTables(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesGetWorksheetPivotTables")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostPivotTableCellStyle() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostPivotTableCellStyle")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let column:Int32 = 1
		let row:Int32 = 1
		
        let font1 = Font(isItalic: nil, name: nil, doubleSize: nil, color: nil, isBold: true, isSubscript: nil, isSuperscript: nil, isStrikeout: nil, underline: nil, size: 17)
        let style:Style? = Style(link: nil, pattern: nil, textDirection: nil, custom: nil, shrinkToFit: nil, isDateTime: nil, cultureCustom: nil, rotationAngle: nil, indentLevel: nil, isPercent: nil, foregroundColor: nil, name: nil, foregroundThemeColor: nil, borderCollection: nil, isLocked: nil, verticalAlignment: nil, backgroundColor: nil, backgroundThemeColor: nil, isFormulaHidden: nil, isGradient: nil, number: nil, horizontalAlignment: nil, isTextWrapped: nil, font: font1)
        
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostPivotTableCellStyle(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, column: column, row: row, style: style, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostPivotTableCellStyle")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostPivotTableFieldHideItem() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostPivotTableFieldHideItem")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let pivotFieldType:String = "Row"
		let fieldIndex:Int32 = 0
		let itemIndex:Int32 = 1
		let isHide:Bool = true
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostPivotTableFieldHideItem(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, pivotFieldType: pivotFieldType, fieldIndex: fieldIndex, itemIndex: itemIndex, isHide: isHide, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostPivotTableFieldHideItem")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostPivotTableFieldMoveTo() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostPivotTableFieldMoveTo")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let fieldIndex:Int32 = 0
		let from:String = "Row"
		let to:String = "Column"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostPivotTableFieldMoveTo(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, fieldIndex: fieldIndex, from: from, to: to, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostPivotTableFieldMoveTo")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostPivotTableStyle() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostPivotTableStyle")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		
        let font1 = Font(isItalic: nil, name: nil, doubleSize: nil, color: nil, isBold: true, isSubscript: nil, isSuperscript: nil, isStrikeout: nil, underline: nil, size: 18)
        let style:Style? = Style(link: nil, pattern: nil, textDirection: nil, custom: nil, shrinkToFit: nil, isDateTime: nil, cultureCustom: nil, rotationAngle: nil, indentLevel: nil, isPercent: nil, foregroundColor: nil, name: nil, foregroundThemeColor: nil, borderCollection: nil, isLocked: nil, verticalAlignment: nil, backgroundColor: nil, backgroundThemeColor: nil, isFormulaHidden: nil, isGradient: nil, number: nil, horizontalAlignment: nil, isTextWrapped: nil, font: font1)
        
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostPivotTableStyle(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, style: style, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostPivotTableStyle")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostWorksheetPivotTableCalculate() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostWorksheetPivotTableCalculate")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostWorksheetPivotTableCalculate(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostWorksheetPivotTableCalculate")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPostWorksheetPivotTableMove() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPostWorksheetPivotTableMove")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let row:Int32? = 1
		let column:Int32? = 1
		let destCellName:String = "C10"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPostWorksheetPivotTableMove(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, row: row, column: column, destCellName: destCellName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPostWorksheetPivotTableMove")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPutPivotTableField()
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPutPivotTableField")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
		let pivotFieldType:String = "Row"
        let data:[Int32]? = [1]
		let request:PivotTableFieldRequest? = PivotTableFieldRequest(data: data)
		let needReCalculate:Bool? = nil
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPutPivotTableField(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, pivotFieldType: pivotFieldType, request: request, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPutPivotTableField")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsPivotTablesPutWorksheetPivotTable() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPutWorksheetPivotTable")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
        
        let _:CreatePivotTableRequest? = CreatePivotTableRequest(pivotFieldColumns: nil, name: "TestPivot", useSameSource: true, pivotFieldData: nil, pivotFieldRows: nil, destCellName: "C1", sourceData: "Sheet1!C6:E13")
        
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		let sourceData:String? = "Sheet1!C6:E13"
		let destCellName:String = "C1"
		let tableName:String? = "TestPivot"
		let useSameSource:Bool? = true
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPutWorksheetPivotTable(name: name, sheetName: sheetName, request: nil, folder: folder, storage: storage, sourceData: sourceData, destCellName: destCellName, tableName: tableName, useSameSource: useSameSource)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPutWorksheetPivotTable")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)
	}
    
    func testcellsPivotTablesPutWorksheetPivotTable_2()
    {
        let expectation = self.expectation(description: "testcellsPivotTablesPutWorksheetPivotTable")
        let name:String = PivTestFile2
        let sheetName:String = SHEET3
        
        let FieldColumns:[Int32]? = [0,1]
        let FieldRows:[Int32]? = [2,3]
        let FieldData:[Int32]? = [4]
        let request:CreatePivotTableRequest? = CreatePivotTableRequest(pivotFieldColumns: FieldColumns, name: "Test", useSameSource: false, pivotFieldData: FieldData, pivotFieldRows: FieldRows, destCellName: "C1", sourceData: "Sheet2!$A$1:$E$8")
        
        let folder:String = TEMPFOLDER
        let storage:String? = nil
        
        uploadFile(name: name) {
            CellsAPI.cellsPivotTablesPutWorksheetPivotTable(name: name, sheetName: sheetName, request: request, folder: folder, storage: storage, sourceData: nil, destCellName: nil, tableName: nil, useSameSource: nil)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testcellsPivotTablesPutWorksheetPivotTable")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

	func testcellsPivotTablesPutWorksheetPivotTableFilter() 
	{
		let expectation = self.expectation(description: "testcellsPivotTablesPutWorksheetPivotTableFilter")
		let name:String = PivTestFile
		let sheetName:String = SHEET4
		let pivotTableIndex:Int32 = 0
        
        let top10Filter:Top10Filter = Top10Filter(items: 1, isPercent: false, isTop: true, criteria: nil)
        let filterColumn:FilterColumn = FilterColumn(filterType: "Top10", multipleFilters: nil, customFilters: nil, dynamicFilter: nil, colorFilter: nil, fieldIndex: 0, top10Filter: top10Filter, iconFilter: nil, visibledropdown: nil)
        let filterColumns: [FilterColumn] = [filterColumn]
        let autoFilter: AutoFilter = AutoFilter(link: nil, range: nil, filterColumns: filterColumns, sorter: nil)
		let filter:PivotFilter? = PivotFilter(evaluationOrder: nil, name: nil, filterType: "Count", autoFilter: autoFilter, fieldIndex: 1, measureFldIndex: nil, value1: nil, memberPropertyFieldIndex: nil, value2: nil)
        
		let needReCalculate:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsPivotTablesPutWorksheetPivotTableFilter(name: name, sheetName: sheetName, pivotTableIndex: pivotTableIndex, filter: filter, needReCalculate: needReCalculate, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsPivotTablesPutWorksheetPivotTableFilter")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}
    
    

}

