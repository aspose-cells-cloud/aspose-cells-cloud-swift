//
// CellsShapesAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsShapesAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsShapesAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsShapesAPITestsSetUp")
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

	func testcellsShapesDeleteWorksheetShape() 
	{
		let expectation = self.expectation(description: "testcellsShapesDeleteWorksheetShape")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let shapeindex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesDeleteWorksheetShape(name: name, sheetName: sheetName, shapeindex: shapeindex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesDeleteWorksheetShape")
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

	func testcellsShapesDeleteWorksheetShapes() 
	{
		let expectation = self.expectation(description: "testcellsShapesDeleteWorksheetShapes")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesDeleteWorksheetShapes(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesDeleteWorksheetShapes")
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

	func testcellsShapesGetWorksheetShape() 
	{
		let expectation = self.expectation(description: "testcellsShapesGetWorksheetShape")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let shapeindex:Int32 = 0
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesGetWorksheetShape(name: name, sheetName: sheetName, shapeindex: shapeindex, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesGetWorksheetShape")
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

	func testcellsShapesGetWorksheetShapes() 
	{
		let expectation = self.expectation(description: "testcellsShapesGetWorksheetShapes")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesGetWorksheetShapes(name: name, sheetName: sheetName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesGetWorksheetShapes")
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

	func testcellsShapesPostWorksheetShape() 
	{
		let expectation = self.expectation(description: "testcellsShapesPostWorksheetShape")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let shapeindex:Int32 = 0
		let dto:Shape? = Shape(link: nil, alternativeText: nil, bottom: nil, top: nil, width: nil, htmlText: nil, textVerticalAlignment: nil, autoShapeType: nil, isPrintable: nil, upperLeftColumn: nil, isLockAspectRatio: nil, isGroup: nil, rotationAngle: nil, zOrderPosition: nil, textHorizontalOverflow: nil, msoDrawingType: nil, textOrientationType: nil, placement: nil, name: nil, isWordArt: nil, linkedCell: nil, upperLeftRow: nil, isLocked: nil, lowerRightRow: nil, isTextWrapped: nil, Y: nil, X: nil, isHidden: nil, _left: nil, _right: nil, text: nil, lowerRightColumn: 10, height: nil, textHorizontalAlignment: nil, textVerticalOverflow: nil)
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesPostWorksheetShape(name: name, sheetName: sheetName, shapeindex: shapeindex, dto: dto, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesPostWorksheetShape")
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

	func testcellsShapesPutWorksheetShape() 
	{
		let expectation = self.expectation(description: "testcellsShapesPutWorksheetShape")
		let name:String = BOOK1
		let sheetName:String = SHEET1
		let drawingType:String = "button"
		let upperLeftRow:Int32 = 1
		let upperLeftColumn:Int32 = 1
		let top:Int32 = 10
		let _left:Int32 = 10
		let width:Int32 = 100
		let height:Int32 = 90
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsShapesAPI.cellsShapesPutWorksheetShape(name: name, sheetName: sheetName, drawingType: drawingType, upperLeftRow: upperLeftRow, upperLeftColumn: upperLeftColumn, top: top, _left: _left, width: width, height: height, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsShapesPutWorksheetShape")
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

