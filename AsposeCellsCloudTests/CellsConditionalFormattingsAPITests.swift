//
// CellsConditionalFormattingsAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsConditionalFormattingsAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsConditionalFormattingsAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsConditionalFormattingsAPITestsSetUp")
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

	func testcellsConditionalFormattingsDeleteWorksheetConditionalFormatting() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsDeleteWorksheetConditionalFormatting")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let index:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsDeleteWorksheetConditionalFormatting(name: name, sheetName: sheetName, index: index, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsDeleteWorksheetConditionalFormatting")
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

	func testcellsConditionalFormattingsDeleteWorksheetConditionalFormattingArea() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsDeleteWorksheetConditionalFormattingArea")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let startRow:Int32 = 1
		let startColumn:Int32 = 1
		let totalRows:Int32 = 4
		let totalColumns:Int32 = 6
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsDeleteWorksheetConditionalFormattingArea(name: name, sheetName: sheetName, startRow: startRow, startColumn: startColumn, totalRows: totalRows, totalColumns: totalColumns, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsDeleteWorksheetConditionalFormattingArea")
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

	func testcellsConditionalFormattingsDeleteWorksheetConditionalFormattings() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsDeleteWorksheetConditionalFormattings")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsDeleteWorksheetConditionalFormattings(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsDeleteWorksheetConditionalFormattings")
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

	func testcellsConditionalFormattingsGetWorksheetConditionalFormatting() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsGetWorksheetConditionalFormatting")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let index:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsGetWorksheetConditionalFormatting(name: name, sheetName: sheetName, index: index, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsGetWorksheetConditionalFormatting")
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

	func testcellsConditionalFormattingsGetWorksheetConditionalFormattings() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsGetWorksheetConditionalFormattings")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsGetWorksheetConditionalFormattings(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsGetWorksheetConditionalFormattings")
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

	func testcellsConditionalFormattingsPutWorksheetConditionalFormatting() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsPutWorksheetConditionalFormatting")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let cellArea:String = CELLAREA
		let formatcondition:FormatCondition? = FormatCondition(link: nil, aboveAverage: nil, formula2: "v2", style: nil, formula1: "v1", colorScale: nil, dataBar: nil, text: nil, stopIfTrue: nil, priority: nil, top10: nil, _operator: "Between", iconSet: nil, type: "CellValue", timePeriod: nil)
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
            CellsAPI.cellsConditionalFormattingsPutWorksheetConditionalFormatting(name: name, sheetName: sheetName, cellArea: cellArea, formatCondition: formatcondition, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsPutWorksheetConditionalFormatting")
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

	func testcellsConditionalFormattingsPutWorksheetFormatCondition() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsPutWorksheetFormatCondition")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let index:Int32 = 0
		let cellArea:String = CELLAREA
		let type:String = "CellValue"
		let operatorType:String = "Between"
		let formula1:String = "v1"
		let formula2:String = "v2"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsPutWorksheetFormatCondition(name: name, sheetName: sheetName, index: index, cellArea: cellArea, type: type, operatorType: operatorType, formula1: formula1, formula2: formula2, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsPutWorksheetFormatCondition")
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

	func testcellsConditionalFormattingsPutWorksheetFormatConditionArea() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsPutWorksheetFormatConditionArea")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let index:Int32 = 0
		let cellArea:String = CELLAREA
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsPutWorksheetFormatConditionArea(name: name, sheetName: sheetName, index: index, cellArea: cellArea, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsPutWorksheetFormatConditionArea")
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

	func testcellsConditionalFormattingsPutWorksheetFormatConditionCondition() 
	{
		let expectation = self.expectation(description: "testcellsConditionalFormattingsPutWorksheetFormatConditionCondition")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let index:Int32 = 0
		let type:String = "CellValue"
		let operatorType:String = "Between"
		let formula1:String = "v1"
		let formula2:String = "v2"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsConditionalFormattingsPutWorksheetFormatConditionCondition(name: name, sheetName: sheetName, index: index, type: type, operatorType: operatorType, formula1: formula1, formula2: formula2, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsConditionalFormattingsPutWorksheetFormatConditionCondition")
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

