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
        var viewModel: FactViewModelProtocol {
            guard let fact = fact.fact else {
                return FactViewModel(fact: "Pour obtenir un fact touchez Chuck !")
            }
            return FactViewModel(fact: fact)
        }
        output?.displayFact(viewModel)
    }
    
    func startLoading() {
        
    }
    
    func stopLoading() {
        
    }
}
