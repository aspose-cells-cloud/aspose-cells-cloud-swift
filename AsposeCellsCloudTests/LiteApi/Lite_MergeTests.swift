//
//  Lite_MergeTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/16.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_MergeTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_MergeTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_MergeTestsSetUp")
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
    
    func testpostMerge()
    {
        let expectation = self.expectation(description: "testpostMerge")
        let format:String? = "pdf"
        let mergeToOneSheet:Bool? = nil
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        
        LiteCellsAPI.postMerge(files: files, format: format, mergeToOneSheet: mergeToOneSheet)
        {
            (response, error) in
            guard error == nil else {
                let errorinfo = self.GetErrorDataInfo(error: error as! ErrorResponse)
                print("error info: \(errorinfo!)")
                XCTFail("error testpostMerge")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FileInfo)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

}
