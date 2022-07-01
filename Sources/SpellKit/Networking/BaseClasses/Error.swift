//
//  File.swift
//  
//
//  Created by Durgasunil Velicheti on 6/28/22.
//

import Foundation

/// errors that can be thrown when requesting data from remote server
enum RequestError: Error {
    case jsonMapping
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
}
