//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation
import RealmSwift
import SwiftyJSON

public class Class: Object, Identifiable {
    @Persisted public var id: String = UUID().uuidString
    @Persisted public var index: String = ""
    @Persisted public var name: String = ""
        
    convenience required public init(json: JSON) {
        self.init()
        name = json["name"].stringValue
        index = json["index"].stringValue
    }
}
