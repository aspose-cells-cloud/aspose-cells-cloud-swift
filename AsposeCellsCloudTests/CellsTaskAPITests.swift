//
// CellsTaskAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud


class CellsTaskAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsTaskAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsTaskAPITestsSetUp")
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

	func testcellsTaskPostRunTask() 
	{
		let expectation = self.expectation(description: "testcellsTaskPostRunTask")
        let name:String = BOOK1
        //let sheetName:String = SHEET6
        //let folder:String = TEMPFOLDER

        let param1:SplitWorkbookTaskParameter = SplitWorkbookTaskParameter(destinationFileFormat: "xlsx", destinationFilePosition: FileSource(filePath: TEMPFOLDER, fileSourceType: "CloudFileSystem"), verticalResolution: nil, horizontalResolution: nil, splitNameRule: "sheetname", workbook: FileSource(filePath: TEMPFOLDER + "\\" + BOOK1, fileSourceType: "CloudFileSystem"))
        let td1:TaskDescription = TaskDescription(taskParameter: param1, taskType: "SplitWorkbook")
        let td:[TaskDescription]? = [td1]
		let taskData:TaskData = TaskData(tasks: td)
		
		uploadFile(name: name) {
			CellsAPI.cellsTaskPostRunTask(taskData: taskData)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsTaskPostRunTask")
					return
				}
	
				if let response = response {
                    XCTAssertTrue(response is NSData)
                    //response is a Data of json, we may write it down and check it.
                    let fileName = "testcellsTaskPostRunTask.txt"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
                    expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

}

