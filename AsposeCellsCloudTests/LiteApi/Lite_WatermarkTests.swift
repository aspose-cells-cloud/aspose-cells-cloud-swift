//
//  Lite_WatermarkTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/23.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_WatermarkTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_WatermarkTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_WatermarkTestsSetUp")
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
    
    func testpostWatermark()
    {
        let expectation = self.expectation(description: "testpostWatermark")
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        let text:String = "aspose.cells cloud sdk"
        let color:String = "#333"
        
        LiteCellsAPI.postWatermark(files: files, text: text, color: color)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostWatermark")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

}
