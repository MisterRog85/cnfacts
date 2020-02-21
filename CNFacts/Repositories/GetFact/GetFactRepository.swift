//
//  GetFactRepository.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation
import CNFactsBusinessLogic

class GetFactRepository {
    weak var output: GetFactRepositoryOutput?
    var worker: GetFactAPIWorkerInput
    
    init(worker: GetFactAPIWorkerInput) {
        self.worker = worker
        self.worker.output = self
    }
}

extension GetFactRepository: GetFactRepositoryInput {
    func getFact() {
        worker.getFact()
    }
    
    
}

extension GetFactRepository: GetFactAPIWorkerOutput {
    func getFactDidRetrieveSuccess(factModel: GetFactModelProtocol) {
        
        output?.getFactDidRetrieve(GetFactRepositoryItem(fact: factModel.fact))
    }
    
    func getFactDidRetrieveError(error: APIError) {
        
    }
}
