//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation
import RealmSwift

class Class: Object, Identifiable {
    @Persisted var id: String = UUID().uuidString
    @Persisted var name: String = ""
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
