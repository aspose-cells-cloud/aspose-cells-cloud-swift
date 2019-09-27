//
// CellsHypelinksAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsHypelinksAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsHypelinksAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsHypelinksAPITestsSetUp")
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

	func testcellsHypelinksDeleteWorksheetHyperlink() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksDeleteWorksheetHyperlink")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let hyperlinkIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksDeleteWorksheetHyperlink(name: name, sheetName: sheetName, hyperlinkIndex: hyperlinkIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksDeleteWorksheetHyperlink")
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

	func testcellsHypelinksDeleteWorksheetHyperlinks() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksDeleteWorksheetHyperlinks")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksDeleteWorksheetHyperlinks(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksDeleteWorksheetHyperlinks")
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

	func testcellsHypelinksGetWorksheetHyperlink() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksGetWorksheetHyperlink")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let hyperlinkIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksGetWorksheetHyperlink(name: name, sheetName: sheetName, hyperlinkIndex: hyperlinkIndex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksGetWorksheetHyperlink")
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

	func testcellsHypelinksGetWorksheetHyperlinks() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksGetWorksheetHyperlinks")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksGetWorksheetHyperlinks(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksGetWorksheetHyperlinks")
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

	func testcellsHypelinksPostWorksheetHyperlink() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksPostWorksheetHyperlink")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let hyperlinkIndex:Int32 = 0
		let hyperlink:Hyperlink? = Hyperlink(link: nil, screenTip: nil, area: nil, textToDisplay: nil, address: "http://www.aspose.com")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksPostWorksheetHyperlink(name: name, sheetName: sheetName, hyperlinkIndex: hyperlinkIndex, hyperlink: hyperlink, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksPostWorksheetHyperlink")
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

	func testcellsHypelinksPutWorksheetHyperlink() 
	{
		let expectation = self.expectation(description: "testcellsHypelinksPutWorksheetHyperlink")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let firstRow:Int32 = 1
		let firstColumn:Int32 = 1
		let totalRows:Int32 = 2
		let totalColumns:Int32 = 3
		let address:String = "http://www.aspose.com"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsHypelinksPutWorksheetHyperlink(name: name, sheetName: sheetName, firstRow: firstRow, firstColumn: firstColumn, totalRows: totalRows, totalColumns: totalColumns, address: address, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsHypelinksPutWorksheetHyperlink")
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

