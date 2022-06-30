//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation

enum ClassEndpoint {
    case getClasses
    case getSpellsForClass(index: String)
    case getSpell(index: String)
}

extension ClassEndpoint: Endpoint {
    
    var path: String {
        switch self {
        case .getClasses:
            return "classes"
        case .getSpellsForClass(let index):
            return "classes/\(index)/spells"
        case .getSpell(let index):
            return "spells/\(index)"        
        }
    }
    
    var method: HttpMethod {
        switch self {
        case .getClasses, .getSpell, .getSpellsForClass:
            return .get
        }
    }
    
    var header: [String: String]? {
        switch self {
        case .getClasses, .getSpell, .getSpellsForClass:
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var body: [String: String]? {
        switch self {
        case .getClasses, .getSpell, .getSpellsForClass:
            return nil
        }
    }
    
}
