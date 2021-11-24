//
//  Lite_MetadataTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2021/11/17.
//

import XCTest
@testable import AsposeCellsCloud


class Lite_MetadataTests: AsposeCellsCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "Lite_MetadataTestsSetUp")
        AuthAspose.checkAuth()
            {
                (authError) in
                guard authError == nil else {
                    XCTFail("error Lite_MetadataTestsSetUp")
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
    
    func testgetMetadata()
    {
        let expectation = self.expectation(description: "testgetMetadata")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let type:String? = nil
        
        LiteCellsAPI.getMetadata(files: files, type: type)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testgetMetadata")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is [CellsDocumentProperty])
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testdeleteMetadata()
    {
        let expectation = self.expectation(description: "testdeleteMetadata")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        let type:String? = nil
        
        LiteCellsAPI.deleteMetadata(files: files, type: type)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testdeleteMetadata")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response is FilesResult)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testpostMetadata()
    {
        let expectation = self.expectation(description: "testpostMetadata")
        var files = Dictionary<String, URL>()
        files[DataSource] = getURL(DataSource)
        files[AssemblyTest] = getURL(AssemblyTest)
        
        let documentProperty:CellsDocumentProperty = CellsDocumentProperty(link: nil, name: "Title", value: "Aspose.Cells Cloud", isLinkedToContent: nil, source: nil, type: nil, isGeneratedName: nil)
        
        var documentProperties = [CellsDocumentProperty]()
        documentProperties.append(documentProperty)

        LiteCellsAPI.postMetadata(files: files, documentProperties: documentProperties)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testpostMetadata")
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
