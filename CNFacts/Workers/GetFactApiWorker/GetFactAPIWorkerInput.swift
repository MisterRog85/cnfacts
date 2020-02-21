//
//  GetFactAPIWorkerInput.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol GetFactAPIWorkerInput {
    var output: GetFactAPIWorkerOutput? {get set}
    func getFact()
}
