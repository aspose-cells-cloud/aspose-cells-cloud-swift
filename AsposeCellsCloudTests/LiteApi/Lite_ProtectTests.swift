//
//  Lite_ProtectTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/23.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_ProtectTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_ProtectTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_ProtectTestsSetUp")
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
    
    func testpostProtect()
    {
        let expectation = self.expectation(description: "testpostProtect")
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        let password:String = "123456"
        
        LiteCellsAPI.postProtect(files: files, password: password)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostProtect")
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
