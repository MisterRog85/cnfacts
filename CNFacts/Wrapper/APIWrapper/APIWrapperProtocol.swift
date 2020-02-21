//
//  APIWrapperProtocol.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

protocol APIWrapperProtocol {
    func get(url: URL, closure: @escaping (Result<Data, APIError>) -> Void)
}

public enum APIError: Error {
    case serverError
}
