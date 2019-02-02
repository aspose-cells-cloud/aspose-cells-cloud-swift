//
//  AsposeCellsCloudTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2018/11/21.
//  Copyright © 2018年 leo luo. All rights reserved.
//

import XCTest
@testable import AsposeCellsCloud

class AsposeCellsCloudTests: XCTestCase {
    
    internal let TEMPFOLDER = "Temp"
    internal let testDataFolder = "TestData"
    internal let BOOK1 = "Book1.xlsx"
    internal let SHEET1 = "Sheet1"
    internal let SHEET2 = "Sheet2"
    internal let SHEET3 = "Sheet3"
    internal let SHEET4 = "Sheet4"
    internal let SHEET5 = "Sheet5"
    internal let SHEET6 = "Sheet6"
    internal let SHEET7 = "Sheet7"
    internal let SHEET8 = "Sheet8"
    internal let CellName = "A1"
    internal let testTimeout: TimeInterval = 60.0
    internal let CELLAREA = "A1:C10"
    internal let RANGE = "A1:C10"
    //This is only for test, please set your licence here
    internal let _appSid = "11111X11-111X-1111-11X1-111111111XX1"
    internal let _appKey = "111x11111111xx1111xxxx11xx1x1111"
    
    
    override func setUp() {
        super.setUp()
        
        // read App Key and App Sid from setup.json file
        // Get App key and App SID from https://cloud.aspose.com
        readSettings()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    private func readSettings() {
        
        //This is only for test, please set your licence here
        AsposeCellsCloudAPI.appSid = self._appSid
        AsposeCellsCloudAPI.appKey = self._appKey
                    
    }
    
    internal func uploadFile(name: String, folder: String = "Temp", completion: @escaping ()->Void) {
        let path = "\(folder)/\(name)"
        
        let url: URL? = getURL(name)
        if (nil == url) {
            XCTFail("no file found \(name)")
            return
        }

        self.putCreate(path: path, file: url!) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(name)")
                return
            }
            if let response = response, response.code == HttpStatusCode.ok.rawValue {
                completion()
            } else {
                XCTFail("error uploading file \(name)")
            }
            
        }
        
    }
    
    internal func uploadFiles(names: [String], completion: @escaping ()->Void) {
        
        var _names = names
        
        if names.count > 1 {
            uploadFile(name: _names.removeFirst()) {
                self.uploadFiles(names: _names, completion: completion)
            }
        } else if names.count == 1 {
            uploadFile(name: _names.removeFirst(), completion: completion)
        } else {
            completion()
        }
        
    }
    
    internal func getURL(_ name: String) -> URL? {
        let bundle = Bundle(for: type(of: self))
        return bundle.url(forResource: name, withExtension: nil)
    }
    
    internal func putCreate(path: String, file: URL, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
            self.putCreateWithRequestBuilder(path: path, file: file, versionId: versionId, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
    }
    
    internal func putCreateWithRequestBuilder(path: String, file: URL, versionId: String? = nil, storage: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/storage/file/\(self.TEMPFOLDER)"
        let URLString = AsposeCellsCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "File": file
        ]
        
        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems([
            "path": path,
            "versionId": versionId,
            "storage": storage
            ])
        
        
        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposeCellsCloudAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }
    
    
}
