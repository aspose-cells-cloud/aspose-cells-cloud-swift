//
//  Lite_SplitTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/23.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_SplitTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_SplitTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_SplitTestsSetUp")
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
    
    func testpostSplit()
    {
        let expectation = self.expectation(description: "testpostSplit")
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        let format:String = "pdf"
        let password:String? = nil
        let from:Int32? = nil
        let to:Int32? = nil
        
        LiteCellsAPI.postSplit(files: files, format: format, password: password, from: from, to: to)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostSplit")
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
