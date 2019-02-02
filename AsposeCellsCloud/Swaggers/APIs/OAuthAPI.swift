//
// OAuthAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OAuthAPI {
    /**
     Get Access token
     
     - parameter grantType: (form) Grant Type 
     - parameter clientId: (form) App SID 
     - parameter clientSecret: (form) App Key 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func oAuthPost(grantType: String, clientId: String, clientSecret: String, completion: @escaping ((_ data: AccessTokenResponse?,_ error: Error?) -> Void)) {
        oAuthPostWithRequestBuilder(grantType: grantType, clientId: clientId, clientSecret: clientSecret).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Access token
     - POST /oauth2/token
     - examples: [{contentType=application/json, example={
  "access_token" : "access_token",
  "refresh_token" : "refresh_token",
  ".expires" : ".expires",
  "token_type" : "token_type",
  "expires_in" : 0,
  "clientRefreshTokenLifeTimeInMinutes" : "clientRefreshTokenLifeTimeInMinutes",
  "client_id" : "client_id",
  ".issued" : ".issued"
}}]
     
     - parameter grantType: (form) Grant Type 
     - parameter clientId: (form) App SID 
     - parameter clientSecret: (form) App Key 

     - returns: RequestBuilder<AccessTokenResponse> 
     */
    open class func oAuthPostWithRequestBuilder(grantType: String, clientId: String, clientSecret: String) -> RequestBuilder<AccessTokenResponse> {
        let path = "/oauth2/token"
        let URLString = AsposeCellsCloudAPI.basePath.replacingOccurrences(of: "/v1.1", with: "") + path
        let formParams: [String:Any?] = [
            "grant_type": grantType,
            "client_id": clientId,
            "client_secret": clientSecret
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AccessTokenResponse>.Type = AsposeCellsCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
