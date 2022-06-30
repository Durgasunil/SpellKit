//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation
import SwiftyJSON
import RealmSwift

public struct ClassHttpClient: HTTPClient {
    public init() { }
    
    public func getClasses() async -> List<Class> {
        var result: Result<JSON, RequestError>
        result = await Request(endpoint: ClassEndpoint.getClasses)
        
        let classes = List<Class>()
        switch result {
        case .success(let json):
            guard let jsonArray = json["results"].array else {
                return classes
            }
            
            JSON(jsonArray).forEach { _, json in
                classes.append(Class(json: json))
            }
            return classes
            
        case .failure(let error):
            return classes
        }
    }
}

