//
//  AsposeCellsCloudTests.swift
//  AsposeCellsCloudTests
//
//  Created by leo luo on 2018/11/21.
//  Copyright © 2018年 leo luo. All rights reserved.
//

import XCTest
@testable import AsposeCellsCloud
import Alamofire

class AsposeCellsCloudTests: XCTestCase {
    
    internal let TEMPFOLDER = "Temp"
    internal let testDataFolder = "TestData"
    internal let BOOK1 = "Book1.xlsx"
    internal let MYDOC = "myDocument.xlsx"
    internal let PivTestFile = "TestCase.xlsx"
    internal let PivTestFile2 = "PivTestFile2.xlsx"
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
    
    internal func uploadFile(name: String, folder: String = "Temp", storage: String? = nil, completion: @escaping ()->Void) {
        
        var path = ""
        if (folder != "")
        {
            path = "\(folder)/\(name)"
        }
        else
        {
            path = name
        }
        
        let url: URL? = getURL(name)
        if (nil == url) {
            XCTFail("no file found \(name)")
            return
        }

        self.putCreate(path: path, file: url!, versionId: nil, storage: storage) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(path)")
                return
            }
            if let response = response, response.uploaded!.count > 0 {
                completion()
            } else {
                XCTFail("error uploading file \(name)")
            }
            
        }
        
    }
    
    /*
    internal func UpdateDataFileForDropBox(name: String, folder: String = "Temp", storage: String? = nil,  completion: @escaping ()->Void) {
        
        var path = ""
        if (folder != "")
        {
            path = "\(folder)/\(name)"
        }
        else
        {
            path = name
        }
        
        let url: URL? = getURL(name)
        if (nil == url) {
            XCTFail("no file found \(name)")
            return
        }
        
        self.putCreate(path: path, file: url!, versionId: nil, storage: storage) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(name)")
                return
            }
            if let response = response, response.errors == nil {
                completion()
            } else {
                XCTFail("error uploading file \(name)")
            }
            
        }
        
    }
    */
    
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
    
    internal func putCreate(path: String, file: URL, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        CellsAPI.uploadFileWithRequestBuilder(path: path, file: file, storageName: storage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    
    internal func deleteFile(name: String, folder: String = "", completion: @escaping ()->Void) {
        
        var path = ""
        if (folder != "")
        {
            path = "\(folder)/\(name)"
        }
        else
        {
            path = name
        }
        
        CellsAPI.deleteFileWithRequestBuilder(path: path).execute { (response, error) -> Void in
            guard error == nil else {
                XCTFail("error delete file \(path)")
                return
            }
            if response != nil {
                completion()
            } else {
                XCTFail("error delete file \(name)")
            }
        }
        
    }
    
    internal func GetErrorDataInfo(error: ErrorResponse) -> String?
    {
        if case let ErrorResponse.error(_, data, _) = error {
            let errorinfo = String(data: data!, encoding: String.Encoding.utf8)
            return errorinfo
        }
        return nil
    }
    
}
