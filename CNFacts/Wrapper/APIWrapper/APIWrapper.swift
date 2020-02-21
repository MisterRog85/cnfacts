//
//  APIWrapper.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

class APIWrapper {
    var currentTask: URLSessionDataTask?
}

extension  APIWrapper: APIWrapperProtocol {
    func get(url: URL, closure: @escaping (Result<Data, APIError>) -> ()) {
        let currentTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                closure(Result.failure(APIError.serverError))
            }
            if let data = data {
                closure(Result.success(data))
            }
        }
        currentTask.resume()
    }
}
