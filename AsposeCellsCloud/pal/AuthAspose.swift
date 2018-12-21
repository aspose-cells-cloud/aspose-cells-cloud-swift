/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

import Foundation
import Alamofire

public class AuthAspose {
    
    public class func checkAuth(completion: @escaping ((_ error: AuthError?) -> Void )) {
        
        if (AsposeCellsCloudAPI.accessToken == nil) {
            
            let grantType = "client_credentials"
            let clientId = "66164C51-693E-4904-A121-545961673EC1"
            let clientSecret = "536e76768419db9585afdd37bb5f7533"
            
            let path = "/oauth2/token"
            let urlString = AsposeCellsCloudAPI.basePath.replacingOccurrences(of: "/v1.1", with: "") + path
            let parameters: [String: Any] = [
                "grant_type": grantType,
                "client_id": clientId,
                "client_secret": clientSecret]
            
            let headers: [String: String] = [
                "Content-Type": "application/x-www-form-urlencoded"
            ]
            
            Alamofire.request(urlString, method: .post, parameters: parameters, headers: headers).responseJSON {
                
                responseJSON in
                
                guard let statusCode = responseJSON.response?.statusCode, let jsonArray = responseJSON.result.value as? [String: Any] else {
                    completion(AuthError.authError)
                    return
                }
                
                if (HttpStatusCode.ok.rawValue == statusCode) {
                    AsposeCellsCloudAPI.accessToken = jsonArray["access_token"] as? String
                    AsposeCellsCloudAPI.refreshToken = jsonArray["refresh_token"] as? String
                    completion(nil)
                    
                } else if (HttpStatusCode.unauthorized.rawValue == statusCode) {
                    completion(AuthError.unauthorizedError)
                }
                else {
                    completion(AuthError.authError)
                }
            }
        }
        else
        {
            completion(nil)
        }
    }
    
    public enum AuthError: Error {
        case credentialsNotSetError
        case unauthorizedError
        case authError
    }
}

