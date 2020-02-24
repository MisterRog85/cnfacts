//
//  FactPresenter.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation
import CNFactsBusinessLogic

class FactPresenter {
    weak var output: FactPresenterOutput?
}

extension FactPresenter: FactInteractorOutput {
    func setFact(_ fact: FactFactItemProtocol) {
        output?.displayFact(fact.fact)
    }
    
    func setPlaceHolder() {
        output?.displayFact("Pour obtenir un fact touchez Chuck !")
    }
    
    func startLoading() {
        
    }
    
    func stopLoading() {
        
    }
}
