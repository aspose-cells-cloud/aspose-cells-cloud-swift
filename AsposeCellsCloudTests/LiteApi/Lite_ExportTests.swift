//
//  Lite_ExportTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/16.
//  Copyright © 2021年 Aspose. All rights reserved.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_ExportTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_ExportTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_ExportTestsSetUp")
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
    
    func testpostExport_Chart()
    {
        let expectation = self.expectation(description: "testpostExport_Chart")
        let objectType:String = "chart"
        let format:String = "png"
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)

        LiteCellsAPI.postExport(files: files, objectType: objectType, format: format)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostExport_Chart")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testpostExport_Workbook()
    {
        let expectation = self.expectation(description: "testpostExport_Workbook")
        let objectType:String = "workbook"
        let format:String = "pdf"
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        
        LiteCellsAPI.postExport(files: files, objectType: objectType, format: format)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostExport_Workbook")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testpostExport_Picture()
    {
        let expectation = self.expectation(description: "testpostExport_Picture")
        let objectType:String = "picture"
        let format:String = "Tiff"
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        
        LiteCellsAPI.postExport(files: files, objectType: objectType, format: format)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostExport_Picture")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testpostExport_ListObject()
    {
        let expectation = self.expectation(description: "testpostExport_ListObject")
        let objectType:String = "listobject"
        let format:String = "xlsx"
        var files = Dictionary<String, URL>()
        files[BOOK1] = getURL(BOOK1)
        files[MYDOC] = getURL(MYDOC)
        
        LiteCellsAPI.postExport(files: files, objectType: objectType, format: format)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostExport_ListObject")
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
