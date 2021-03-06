//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation

/// represents all the inputs needed to initialize an Endpoint to make http requests
protocol Endpoint {
    var baseURL: String { get }
    var path: String { get }
    var method: HttpMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
}

extension Endpoint {
    var baseURL: String {
        return "https://www.dnd5eapi.co/api/"
    }
}
