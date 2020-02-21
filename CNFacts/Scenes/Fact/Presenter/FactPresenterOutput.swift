//
//  FactPresenterOutput.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public protocol FactPresenterOutput: class {
    func displayFact(_ fact: FactViewModelProtocol)
}
