//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/29/22.
//

import Foundation
import RealmSwift
import SwiftyJSON

struct SpellsHttpClient: HTTPClient {
    func getSpellsForClass(withIndex index: String) async -> [String]{
        var result: Result<JSON, RequestError>
        result = await Request(endpoint: ClassEndpoint.getSpellsForClass(index: index))
                
        var spellIndexes: [String] = []
        switch result {
        case .success(let json):
            guard let jsonArray = json["results"].array else {
                return spellIndexes
            }
            
            JSON(jsonArray).forEach { _, json in
                spellIndexes.append(json["index"].stringValue)
            }
            return spellIndexes
            
        case .failure(let error):
            return spellIndexes
        }
    }
    
    func getSpell(withIndex index: String) async -> Spell? {
        var result: Result<JSON, RequestError>
        result = await Request(endpoint: ClassEndpoint.getSpell(index: index))
        
        switch result {
        case .success(let json):            
            return Spell(json: json)
        
        case .failure(let error):
            return nil
        }
    }
}
