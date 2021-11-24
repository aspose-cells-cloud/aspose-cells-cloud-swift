//
//  Lite_UnlockTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/23.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_UnlockTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_UnlockTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_UnlockTestsSetUp")
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
    
    func testpostUnlock()
    {
        let expectation = self.expectation(description: "testpostUnlock")
        var files = Dictionary<String, URL>()
        files[NEEDUNLOCK] = getURL(NEEDUNLOCK)
        let password:String = "123456"
        
        LiteCellsAPI.postUnlock(files: files, password: password)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostUnlock")
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
