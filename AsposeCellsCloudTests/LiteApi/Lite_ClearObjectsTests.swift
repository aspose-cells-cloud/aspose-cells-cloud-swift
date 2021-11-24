//
//  ClearObjectsTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/16.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_ClearObjectsTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_ClearObjectsTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_ClearObjectsTestsTestsSetUp")
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
    
    func testpostClearObjects_Comment()
    {
        let expectation = self.expectation(description: "testpostClearObjects_Comment")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let objecttype:String = "comment"
        
        LiteCellsAPI.postClearObjects(files: files, objecttype: objecttype)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostClearObjects_Comment")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
 
    func testpostClearObjects_Chart()
    {
        let expectation = self.expectation(description: "testpostClearObjects_Chart")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let objecttype:String = "chart"
        
        LiteCellsAPI.postClearObjects(files: files, objecttype: objecttype)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostClearObjects_Chart")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
 
    func testpostClearObjects_Picture()
    {
        let expectation = self.expectation(description: "testpostClearObjects_Picture")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let objecttype:String = "picture"
        
        LiteCellsAPI.postClearObjects(files: files, objecttype: objecttype)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostClearObjects_Picture")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testpostClearObjects_Shape()
    {
        let expectation = self.expectation(description: "testpostClearObjects_Shape")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let objecttype:String = "shape"
        
        LiteCellsAPI.postClearObjects(files: files, objecttype: objecttype)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostClearObjects_Shape")
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
