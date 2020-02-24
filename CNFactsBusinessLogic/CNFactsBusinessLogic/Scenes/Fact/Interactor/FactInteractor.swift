//
//  FactInteractor.swift
//  CNFactsBusinessLogic
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

class FactInteractor {
    var output: FactInteractorOutput
    var repository: GetFactRepositoryInput
    
    init(output: FactInteractorOutput, repository: GetFactRepositoryInput) {
        self.output = output
        self.repository = repository
        
        self.repository.output = self
    }
}

extension FactInteractor: FactInteractorInput{
    func retrieveFact() {
        output.setPlaceHolder()
        output.startLoading()
        repository.getFact()
    }
}

extension FactInteractor: GetFactRepositoryOutput {
    func getFactDidRetrieve(_ fact: GetFactRepositoryItemProtocol) {
        var tmpFact: FactFactItemProtocol
        if let item = fact.fact {
            tmpFact = FactFactItem(fact: item)
            self.output.setFact(tmpFact)
        } else {
            self.output.setPlaceHolder()
        }
        
        self.output.stopLoading()
    }
}
