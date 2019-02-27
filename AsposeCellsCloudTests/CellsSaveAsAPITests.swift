//
// CellsSaveAsAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsSaveAsAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsSaveAsAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsSaveAsAPITestsSetUp")
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

	func testcellsSaveAsPostDocumentSaveAs() 
	{
		let expectation = self.expectation(description: "testcellsSaveAsPostDocumentSaveAs")
		let name:String = BOOK1
		let saveOptions:SaveOptions? = nil
		let newfilename:String = "newbook.xlsx"
		let isAutoFitRows:Bool? = true
		let isAutoFitColumns:Bool? = nil
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsSaveAsAPI.cellsSaveAsPostDocumentSaveAs(name: name, saveOptions: saveOptions, newfilename: newfilename, isAutoFitRows: isAutoFitRows, isAutoFitColumns: isAutoFitColumns, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsSaveAsPostDocumentSaveAs")
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
