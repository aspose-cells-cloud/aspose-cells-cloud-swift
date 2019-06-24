//
// CellsWorkbookAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import AsposeCellsCloud
import Foundation

class CellsWorkbookAPITests: AsposeCellsCloudTests {

	override func setUp() 
	{
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
		let expectation = self.expectation(description: "CellsWorkbookAPITestsSetUp")
		AuthAspose.checkAuth()
		{
			(authError) in
			guard authError == nil else {
			    XCTFail("error CellsWorkbookAPITestsSetUp")
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

	func testcellsWorkbookDeleteDecryptDocument() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookDeleteDecryptDocument")
		let name:String = BOOK1
		let encryption:WorkbookEncryptionRequest? = WorkbookEncryptionRequest(password: "123456", keyLength: 128, encryptionType: "XOR")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookDeleteDecryptDocument(name: name, encryption: encryption, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookDeleteDecryptDocument")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookDeleteDocumentUnprotectFromChanges() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookDeleteDocumentUnprotectFromChanges")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookDeleteDocumentUnprotectFromChanges(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookDeleteDocumentUnprotectFromChanges")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookDeleteUnprotectDocument() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookDeleteUnprotectDocument")
		let name:String = BOOK1
		let protection:WorkbookProtectionRequest? = WorkbookProtectionRequest(password: "123", protectionType: "All")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookDeleteUnprotectDocument(name: name, protection: protection, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookDeleteUnprotectDocument")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookDeleteWorkbookName() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookDeleteWorkbookName")
		let name:String = BOOK1
		let nameName:String = "Name_2"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookDeleteWorkbookName(name: name, nameName: nameName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookDeleteWorkbookName")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookDeleteWorkbookNames() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookDeleteWorkbookNames")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookDeleteWorkbookNames(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookDeleteWorkbookNames")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbook() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbook")
		let name:String = BOOK1
		let password:String? = nil
		let format:String? = "XPS"
		let isAutoFit:Bool? = true
		let onlySaveTable:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		let outPath:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbook(name: name, password: password, format: format, isAutoFit: isAutoFit, onlySaveTable: onlySaveTable, folder: folder, storage: storage, outPath: outPath)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbook")
					return
				}
	
				if let response = response {
					XCTAssertTrue(response is NSData)
                    //response is a Data of json, we may write it down and check it.
                    let fileName = "testcellsWorkbookGetWorkbook.txt"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

    func testcellsWorkbookGetMarkdownFormat()
    {
        let expectation = self.expectation(description: "testcellsWorkbookGetMarkdownFormat")
        let name:String = BOOK1
        let password:String? = nil
        let format:String? = "md"
        let isAutoFit:Bool? = true
        let onlySaveTable:Bool? = true
        let folder:String = TEMPFOLDER
        let storage:String? = nil
        let outPath:String? = nil
        
        uploadFile(name: name) {
            CellsWorkbookAPI.cellsWorkbookGetWorkbook(name: name, password: password, format: format, isAutoFit: isAutoFit, onlySaveTable: onlySaveTable, folder: folder, storage: storage, outPath: outPath)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testcellsWorkbookGetMarkdownFormat")
                    return
                }
                
                if let response = response {
                    XCTAssertTrue(response is NSData)
                    //response is a Data of json, we may write it down and check it.
                    let fileName = "markdowntest.md"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

	func testcellsWorkbookGetWorkbookDefaultStyle() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookDefaultStyle")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookDefaultStyle(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookDefaultStyle")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbookName() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookName")
		let name:String = BOOK1
		let nameName:String = "Name_2"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookName(name: name, nameName: nameName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookName")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbookNameValue() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookNameValue")
		let name:String = BOOK1
		let nameName:String = "Name_2"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookNameValue(name: name, nameName: nameName, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookNameValue")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbookNames() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookNames")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookNames(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookNames")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbookSettings() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookSettings")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookSettings(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookSettings")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookGetWorkbookTextItems() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookGetWorkbookTextItems")
		let name:String = BOOK1
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookGetWorkbookTextItems(name: name, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookGetWorkbookTextItems")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostAutofitWorkbookRows() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostAutofitWorkbookRows")
		let name:String = BOOK1
		let autoFitterOptions:AutoFitterOptions? = nil
		let startRow:Int32 = 1
		let endRow:Int32? = 100
		let onlyAuto:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostAutofitWorkbookRows(name: name, autoFitterOptions: autoFitterOptions, startRow: startRow, endRow: endRow, onlyAuto: onlyAuto, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostAutofitWorkbookRows")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostEncryptDocument() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostEncryptDocument")
		let name:String = BOOK1
		let encryption:WorkbookEncryptionRequest? = WorkbookEncryptionRequest(password: "123456", keyLength: 128, encryptionType: "XOR")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostEncryptDocument(name: name, encryption: encryption, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostEncryptDocument")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostImportData() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostImportData")
		let name:String = BOOK1
        let list1:[Int32]? = [1, 2, 3, 4]
        let importdata:ImportIntArrayOption = ImportIntArrayOption(source: nil, importDataType: "IntArray", destinationWorksheet: SHEET1, isInsert: nil, data: list1, isVertical: true, firstRow: 3, firstColumn: 1)
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostImportData(name: name, importdata: importdata, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostImportData")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostProtectDocument() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostProtectDocument")
		let name:String = BOOK1
		let protection:WorkbookProtectionRequest? = WorkbookProtectionRequest(password: "123", protectionType: "All")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostProtectDocument(name: name, protection: protection, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostProtectDocument")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbookCalculateFormula() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbookCalculateFormula")
		let name:String = BOOK1
		let options:CalculationOptions? = CalculationOptions(precisionStrategy: nil, ignoreError: true, recursive: nil, calcStackSize: nil)
		let ignoreError:Bool? = true
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostWorkbookCalculateFormula(name: name, options: options, ignoreError: ignoreError, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbookCalculateFormula")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbookGetSmartMarkerResult() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbookGetSmartMarkerResult")
		let name:String = BOOK1
		let xmlFile:String? = "ReportData.xml"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		let outPath:String? = nil
		
		uploadFile(name: name) {
        self.uploadFile(name: xmlFile!, folder: "") {
            
			CellsWorkbookAPI.cellsWorkbookPostWorkbookGetSmartMarkerResult(name: name, xmlFile: xmlFile, folder: folder, storage: storage, outPath: outPath)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbookGetSmartMarkerResult")
					return
				}
	
				if let response = response {
					XCTAssertTrue(response is NSData)
                    //response is a Data of json, we may write it down and check it.
                    let fileName = "testcellsWorkbookPostWorkbookGetSmartMarkerResult.txt"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
					expectation.fulfill()
				}
			}
		}
        }
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbookSettings() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbookSettings")
		let name:String = BOOK1
        let settings:WorkbookSettings? = WorkbookSettings(numberGroupSeparator: nil, hidePivotFieldList: nil, isMinimized: nil, calculationId: nil, reCalculateOnOpen: nil, checkExcelRestriction: nil, isHScrollBarVisible: nil, windowHeight: nil, windowLeft: nil, calcStackSize: nil, shared: nil, removePersonalInformation: nil, languageCode: nil, enableMacros: nil, isDefaultEncrypted: nil, recalculateBeforeSave: nil, parsingFormulaOnOpen: nil, windowTop: nil, region: nil, memorySetting: nil, updateAdjacentCellsBorder: nil, crashSave: nil, showTabs: nil, precisionAsDisplayed: nil, calcMode: nil, autoCompressPictures: true, date1904: nil, numberDecimalSeparator: nil, iteration: nil, checkComptiliblity: nil, autoRecover: nil, maxChange: nil, dataExtractLoad: nil, firstVisibleTab: nil, isHidden: nil, recommendReadOnly: nil, displayDrawingObjects: nil, buildVersion: nil, isVScrollBarVisible: nil, windowWidth: nil, createCalcChain: nil, maxIteration: nil, repairLoad: nil, updateLinksType: nil, sheetTabBarWidth: nil)
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostWorkbookSettings(name: name, settings: settings, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbookSettings")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbookSplit() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbookSplit")
		let name:String = BOOK1
		let format:String? = "png"
		let from:Int32? = 1
		let to:Int32? = 3
		let horizontalResolution:Int32? = 100
		let verticalResolution:Int32? = 90
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostWorkbookSplit(name: name, format: format, from: from, to: to, horizontalResolution: horizontalResolution, verticalResolution: verticalResolution, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbookSplit")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbooksMerge() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbooksMerge")
		let name:String = BOOK1
		let mergeWith:String = "myDocument.xlsx"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
        self.uploadFile(name: mergeWith, folder: "") {
                
			CellsWorkbookAPI.cellsWorkbookPostWorkbooksMerge(name: name, mergeWith: mergeWith, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbooksMerge")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
        }
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbooksTextReplace() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbooksTextReplace")
		let name:String = BOOK1
		let oldValue:String = "!22"
		let newValue:String = "22"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostWorkbooksTextReplace(name: name, oldValue: oldValue, newValue: newValue, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbooksTextReplace")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPostWorkbooksTextSearch() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPostWorkbooksTextSearch")
		let name:String = BOOK1
		let text:String = "test"
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPostWorkbooksTextSearch(name: name, text: text, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPostWorkbooksTextSearch")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPutConvertWorkbook() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPutConvertWorkbook")
        let workbook:String = BOOK1
		let format:String? = "pdf"
        
        let url1: URL? = getURL(workbook)
        //let newImage = UIImage(contentsOfFile: url1!.path)
        //let imageData = newImage!.pngData()
        let filedata = NSData(contentsOfFile: url1!.path)
        
		let password:String? = nil
		let outPath:String? = nil
		
		uploadFile(name: workbook) {
            CellsWorkbookAPI.cellsWorkbookPutConvertWorkbook(workbook: filedata! as Data, format: format, password: password, outPath: outPath)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPutConvertWorkbook")
					return
				}
	
				if let response = response {
					XCTAssertTrue(response is NSData)
                    //response is a Data of file, we may write it down and check it.
                    let fileName = "testcellsWorkbookPutConvertWorkbook.pdf"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}
    
    func testcellsWorkbookPutConvertMD()
    {
        let expectation = self.expectation(description: "testcellsWorkbookPutConvertMD")
        let workbook:String = BOOK1
        let format:String? = "md"
        
        let url1: URL? = getURL(workbook)
        let filedata = NSData(contentsOfFile: url1!.path)
        
        let password:String? = nil
        let outPath:String? = nil
        
        uploadFile(name: workbook) {
            CellsWorkbookAPI.cellsWorkbookPutConvertWorkbook(workbook: filedata! as Data, format: format, password: password, outPath: outPath)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testcellsWorkbookPutConvertMD")
                    return
                }
                
                if let response = response {
                    XCTAssertTrue(response is NSData)
                    //response is a Data of file, we may write it down and check it.
                    let fileName = "testcellsWorkbookPutConvertMD.md"
                    let filePath = NSHomeDirectory()
                    let fileManager = FileManager.default
                    let path = "\(filePath)/tmp/\(fileName)"
                    fileManager.createFile(atPath: path, contents:nil, attributes:nil)
                    let handle = FileHandle(forWritingAtPath:path)
                    handle?.write(response as! Data)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
	func testcellsWorkbookPutDocumentProtectFromChanges() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPutDocumentProtectFromChanges")
		let name:String = BOOK1
        let password:PasswordRequest? = PasswordRequest(password: "123456")
		let folder:String = TEMPFOLDER
		let storage:String? = nil
		
		uploadFile(name: name) {
			CellsWorkbookAPI.cellsWorkbookPutDocumentProtectFromChanges(name: name, password: password, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPutDocumentProtectFromChanges")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

	func testcellsWorkbookPutWorkbookCreate() 
	{
		let expectation = self.expectation(description: "testcellsWorkbookPutWorkbookCreate")
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "YYYYMMddHHmmss"
        let dateNow = Date()
        let s1 = dateformatter.string(from: dateNow)
        let name:String = "NewBook\(s1).xlsx" ;
        
        let folder:String = TEMPFOLDER
		let templateFile:String? = "\(TEMPFOLDER)/\(BOOK1)"
		let dataFile:String? = "\(TEMPFOLDER)/ReportData.xml"
		let storage:String? = nil
		
        self.uploadFile(name: BOOK1) {
        self.uploadFile(name: "ReportData.xml") {
			CellsWorkbookAPI.cellsWorkbookPutWorkbookCreate(name: name, templateFile: templateFile, dataFile: dataFile, folder: folder, storage: storage)
			{
				(response, error) in
				guard error == nil else {
					XCTFail("error testcellsWorkbookPutWorkbookCreate")
					return
				}
	
				if let response = response {
					XCTAssertEqual(response.code, 200)
					expectation.fulfill()
				}
			}
		}
        }
		self.waitForExpectations(timeout: testTimeout, handler: nil)		
	}

    func testcellsWorkbookPostWorkbooksTextSearchTestForDropBox()
    {
        let expectation = self.expectation(description: "testcellsWorkbookPostWorkbooksTextSearchTestForDropBox")
        let name:String = BOOK1
        let text:String = "test"
        let folder:String = TEMPFOLDER
        let storage:String? = "DropBox"
        
        UpdateDataFileForDropBox(name: name, folder: folder, storage: storage) {
            CellsWorkbookAPI.cellsWorkbookPostWorkbooksTextSearch(name: name, text: text, folder: folder, storage: storage)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testcellsWorkbookPostWorkbooksTextSearchTestForDropBox")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}

