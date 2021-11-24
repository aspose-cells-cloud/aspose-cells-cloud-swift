//
//  Lite_SearchTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/23.
//

import XCTest
@testable import AsposeCellsCloud

class Lite_SearchTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_SearchTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_SearchTestsSetUp")
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

    func testpostSearch()
    {
        let expectation = self.expectation(description: "testpostSearch")
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        let text:String = "1"
        let password:String? = nil
        let sheetname:String? = nil

        LiteCellsAPI.postSearch(files: files, text: text, password: password, sheetname: sheetname)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostSearch")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is [TextItem])
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testpostSearch_Sheet()
    {
        let expectation = self.expectation(description: "testpostSearch")
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        let text:String = "1"
        let password:String? = nil
        let sheetname:String? = "Sheet1"
        
        LiteCellsAPI.postSearch(files: files, text: text, password: password, sheetname: sheetname)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostSearch")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is [TextItem])
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}
