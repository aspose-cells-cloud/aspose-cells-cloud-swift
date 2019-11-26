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
            
            guard let appSid = AsposeCellsCloudAPI.appSid, let appKey = AsposeCellsCloudAPI.appKey else {
                completion(AuthError.credentialsNotSetError)
                return
            }
            
            let grantType:String = "client_credentials"
            CellsAPI.oAuthPost(grantType: grantType, clientId: appSid, clientSecret: appKey)
            {
                (response, error) in
                guard error == nil else {
                    completion(error as? AuthAspose.AuthError)
                    return
                }
             
                if let response = response {
                    AsposeCellsCloudAPI.accessToken = response.accessToken
                    AsposeCellsCloudAPI.refreshToken = response.refreshToken
                    completion(nil)
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

