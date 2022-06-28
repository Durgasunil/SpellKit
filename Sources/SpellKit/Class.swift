//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation
import RealmSwift

public class Class: Object, Identifiable {
    @Persisted public var id: String = UUID().uuidString
    @Persisted public var name: String = ""
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
