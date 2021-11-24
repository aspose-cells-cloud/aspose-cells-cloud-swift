//
// CellsChartAreaAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsChartAreaAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsChartAreaAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsChartAreaAPITestsSetUp")
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

	func testcellsChartAreaGetChartArea() 
	{
		let expectation = self.expectation(description: "testcellsChartAreaGetChartArea")
		let name:String = MYDOC
		let sheetName:String = SHEET3
		let chartIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storageName:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsChartAreaGetChartArea(name: name, sheetName: sheetName, chartIndex: chartIndex, folder: folder, storageName: storageName)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsChartAreaGetChartArea")
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

	func testcellsChartAreaGetChartAreaBorder() 
	{
		let expectation = self.expectation(description: "testcellsChartAreaGetChartAreaBorder")
		let name:String = MYDOC
		let sheetName:String = SHEET3
		let chartIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storageName:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsChartAreaGetChartAreaBorder(name: name, sheetName: sheetName, chartIndex: chartIndex, folder: folder, storageName: storageName)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsChartAreaGetChartAreaBorder")
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

	func testcellsChartAreaGetChartAreaFillFormat() 
	{
		let expectation = self.expectation(description: "testcellsChartAreaGetChartAreaFillFormat")
		let name:String = MYDOC
		let sheetName:String = SHEET3
		let chartIndex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storageName:String? = nil
		
		uploadFile(name: name) {
			CellsAPI.cellsChartAreaGetChartAreaFillFormat(name: name, sheetName: sheetName, chartIndex: chartIndex, folder: folder, storageName: storageName)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsChartAreaGetChartAreaFillFormat")
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
