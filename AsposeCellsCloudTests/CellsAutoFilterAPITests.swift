//
// CellsAutoFilterAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsAutoFilterAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsAutoFilterAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsAutoFilterAPITestsSetUp")
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

	func testcellsAutoFilterDeleteWorksheetDateFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterDeleteWorksheetDateFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let fieldIndex:Int32 = 1
		let dateTimeGroupingType:String = "Day"
		let year:Int32? = 2010
		let month:Int32? = 10
		let day:Int32? = 1
		let hour:Int32? = 1
		let minute:Int32? = 1
		let second:Int32? = 1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterDeleteWorksheetDateFilter(name: name, sheetName: sheetName, fieldIndex: fieldIndex, dateTimeGroupingType: dateTimeGroupingType, year: year, month: month, day: day, hour: hour, minute: minute, second: second, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterDeleteWorksheetDateFilter")
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

	func testcellsAutoFilterDeleteWorksheetFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterDeleteWorksheetFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let fieldIndex:Int32 = 1
		let criteria:String? = "test"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterDeleteWorksheetFilter(name: name, sheetName: sheetName, fieldIndex: fieldIndex, criteria: criteria, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterDeleteWorksheetFilter")
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

	func testcellsAutoFilterGetWorksheetAutoFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterGetWorksheetAutoFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterGetWorksheetAutoFilter(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterGetWorksheetAutoFilter")
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

	func testcellsAutoFilterPostWorksheetAutoFilterRefresh() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPostWorksheetAutoFilterRefresh")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPostWorksheetAutoFilterRefresh(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPostWorksheetAutoFilterRefresh")
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

	func testcellsAutoFilterPostWorksheetMatchBlanks() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPostWorksheetMatchBlanks")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let fieldIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPostWorksheetMatchBlanks(name: name, sheetName: sheetName, fieldIndex: fieldIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPostWorksheetMatchBlanks")
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

	func testcellsAutoFilterPostWorksheetMatchNonBlanks() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPostWorksheetMatchNonBlanks")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let fieldIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPostWorksheetMatchNonBlanks(name: name, sheetName: sheetName, fieldIndex: fieldIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPostWorksheetMatchNonBlanks")
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

	func testcellsAutoFilterPutWorksheetColorFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetColorFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
        
        let color1:Color = Color(A: 0, B: 0, R: 255, G: 245)
        let celcol1 = CellsColor(color: color1, type: nil, themeColor: nil, isShapeColor: nil, colorIndex: nil)
		let colorFilter:ColorFilterRequest? = ColorFilterRequest(pattern: "Solid", foregroundColor: celcol1, backgroundColor: nil)
        
		let matchBlanks:Bool? = true
		let refresh:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetColorFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, colorFilter: colorFilter, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetColorFilter")
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

	func testcellsAutoFilterPutWorksheetCustomFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetCustomFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
        let operatorType1:String = "LessOrEqual"
		let criteria1:String = "test"
		let isAnd:Bool? = false
		let operatorType2:String? = "LessOrEqual"
		let criteria2:String? = "test"
		let matchBlanks:Bool? = true
		let refresh:Bool? = false
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetCustomFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, operatorType1: operatorType1, criteria1: criteria1, isAnd: isAnd, operatorType2: operatorType2, criteria2: criteria2, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetCustomFilter")
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

	func testcellsAutoFilterPutWorksheetDateFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetDateFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
		let dateTimeGroupingType:String = "Day"
		let year:Int32? = 2019
		let month:Int32? = 1
		let day:Int32? = 1
		let hour:Int32? = 1
		let minute:Int32? = 1
		let second:Int32? = 1
		let matchBlanks:Bool? = true
		let refresh:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetDateFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, dateTimeGroupingType: dateTimeGroupingType, year: year, month: month, day: day, hour: hour, minute: minute, second: second, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetDateFilter")
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

	func testcellsAutoFilterPutWorksheetDynamicFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetDynamicFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
		let dynamicFilterType:String = "May"
		let matchBlanks:Bool? = true
		let refresh:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetDynamicFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, dynamicFilterType: dynamicFilterType, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetDynamicFilter")
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

	func testcellsAutoFilterPutWorksheetFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
		let criteria:String = "test"
		let matchBlanks:Bool? = true
		let refresh:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, criteria: criteria, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetFilter")
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

	func testcellsAutoFilterPutWorksheetFilterTop10() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetFilterTop10")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
		let isTop:Bool = true
		let isPercent:Bool = true
		let itemCount:Int32 = 1
		let matchBlanks:Bool? = nil
		let refresh:Bool? = nil
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetFilterTop10(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, isTop: isTop, isPercent: isPercent, itemCount: itemCount, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetFilterTop10")
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

	func testcellsAutoFilterPutWorksheetIconFilter() 
	{
		let expectation = self.expectation(description: "testcellsAutoFilterPutWorksheetIconFilter")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let range:String = RANGE
		let fieldIndex:Int32 = 0
		let iconSetType:String = "None"
		let iconId:Int32 = 0
		let matchBlanks:Bool? = nil
		let refresh:Bool? = nil
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsAutoFilterPutWorksheetIconFilter(name: name, sheetName: sheetName, range: range, fieldIndex: fieldIndex, iconSetType: iconSetType, iconId: iconId, matchBlanks: matchBlanks, refresh: refresh, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsAutoFilterPutWorksheetIconFilter")
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

