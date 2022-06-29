//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation

enum ClassEndpoint {
    case getClasses
    case getSpellsForClass(let index)
    case getSpell(let index)
}

extension ClassEndpoint: Endpoint {
    
    var path: String {
        switch self {
        case .getClasses:
            return "classes"
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
