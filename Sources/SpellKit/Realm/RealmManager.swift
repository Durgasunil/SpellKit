//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/29/22.
//

import Foundation
import RealmSwift

// Singleton class to access the Realm as per the configuration.
public final class RealmManager {
    
    private let inMemoryRealmName = "Spells"
    public static let shared = RealmManager()
        
    private var appRealmConfig: Realm.Configuration {
        return Realm.Configuration(inMemoryIdentifier: inMemoryRealmName)
    }
        
    public var spellRealm: Realm {
        let realmConfig = appRealmConfig
        
        let realm = try! Realm(configuration: realmConfig)
        return realm
    }
}
