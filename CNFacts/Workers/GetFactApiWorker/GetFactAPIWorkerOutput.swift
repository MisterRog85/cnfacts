//
//  GetFactAPIWorkerOutput.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol GetFactAPIWorkerOutput: class {
    func getFactDidRetrieveSuccess(factModel: GetFactModelProtocol)
    func getFactDidRetrieveError(error: APIError)
}
