//
// CellsAutoshapesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CellsAutoshapesAPI {
    /**
     Get autoshape info.
     
     - parameter name: (path) Document name. 
     - parameter sheetName: (path) Worksheet name. 
     - parameter autoshapeNumber: (path) The autoshape number. 
     - parameter format: (query) Exported format. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) storage name. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cellsAutoshapesGetWorksheetAutoshape(name: String, sheetName: String, autoshapeNumber: Int32, format: String? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: NSURL?,_ error: Error?) -> Void)) {
        cellsAutoshapesGetWorksheetAutoshapeWithRequestBuilder(name: name, sheetName: sheetName, autoshapeNumber: autoshapeNumber, format: format, folder: folder, storage: storage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get autoshape info.
     - GET /cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) Document name. 
     - parameter sheetName: (path) Worksheet name. 
     - parameter autoshapeNumber: (path) The autoshape number. 
     - parameter format: (query) Exported format. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) storage name. (optional)

     - returns: RequestBuilder<NSURL> 
     */
    open class func cellsAutoshapesGetWorksheetAutoshapeWithRequestBuilder(name: String, sheetName: String, autoshapeNumber: Int32, format: String? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<NSURL> {
        var path = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}"
        let namePreEscape = "\(name)"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let sheetNamePreEscape = "\(sheetName)"
        let sheetNamePostEscape = sheetNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sheetName}", with: sheetNamePostEscape, options: .literal, range: nil)
        let autoshapeNumberPreEscape = "\(autoshapeNumber)"
        let autoshapeNumberPostEscape = autoshapeNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{autoshapeNumber}", with: autoshapeNumberPostEscape, options: .literal, range: nil)
        let URLString = AsposeCellsCloudAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": format, 
            "folder": folder, 
            "storage": storage
        ])

        let requestBuilder: RequestBuilder<NSURL>.Type = AsposeCellsCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get worksheet autoshapes info.
     
     - parameter name: (path) Document name. 
     - parameter sheetName: (path) The worksheet name. 
     - parameter folder: (query) Document&#39;s folder. (optional)
     - parameter storage: (query) storage name. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cellsAutoshapesGetWorksheetAutoshapes(name: String, sheetName: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AutoShapesResponse?,_ error: Error?) -> Void)) {
        cellsAutoshapesGetWorksheetAutoshapesWithRequestBuilder(name: name, sheetName: sheetName, folder: folder, storage: storage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get worksheet autoshapes info.
     - GET /cells/{name}/worksheets/{sheetName}/autoshapes
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) Document name. 
     - parameter sheetName: (path) The worksheet name. 
     - parameter folder: (query) Document&#39;s folder. (optional)
     - parameter storage: (query) storage name. (optional)

     - returns: RequestBuilder<AutoShapesResponse> 
     */
    open class func cellsAutoshapesGetWorksheetAutoshapesWithRequestBuilder(name: String, sheetName: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AutoShapesResponse> {
        var path = "/cells/{name}/worksheets/{sheetName}/autoshapes"
        let namePreEscape = "\(name)"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let sheetNamePreEscape = "\(sheetName)"
        let sheetNamePostEscape = sheetNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sheetName}", with: sheetNamePostEscape, options: .literal, range: nil)
        let URLString = AsposeCellsCloudAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])

        let requestBuilder: RequestBuilder<AutoShapesResponse>.Type = AsposeCellsCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
