//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/29/22.
//

import Foundation
import RealmSwift
import SwiftyJSON

/// realm model for spell as defined here https://www.dnd5eapi.co/docs#get-/api/spells
public class Spell:Object, Identifiable {
    @Persisted(primaryKey: true) public var index: String
    @Persisted public var name: String = ""
    @Persisted public var desc: String = ""
    
    convenience required public init(json: JSON) {
        self.init()
        index = json["index"].stringValue
        name = json["name"].stringValue
        let descriptionArray = json["desc"].arrayValue
        for str in descriptionArray {
            desc += str.stringValue + "\n"
        }
    }
}
