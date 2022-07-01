//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation
import RealmSwift
import SwiftyJSON

/// Realm Model for Character Class as defined here https://www.dnd5eapi.co/docs#tag--Class
public class Class: Object, Identifiable {
    @Persisted(primaryKey: true) public var id: String = UUID().uuidString
    @Persisted public var index: String = ""
    @Persisted public var name: String = ""
    
    @Persisted public var spells = List<String>()
        
    convenience required public init(json: JSON) {
        self.init()
        index = json["index"].stringValue
        name = json["name"].stringValue
    }
}
