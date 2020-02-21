//
//  FactModuleFactory.swift
//  CNFactsBusinessLogic
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

public class FactBLModuleFactory {
    public init() {
        
    }
}

extension FactBLModuleFactory: FactBLModuleFactoryProtocol {
    public func makeInteractor(output: FactInteractorOutput, repository: GetFactRepositoryInput) -> FactInteractorInput {
        return FactInteractor(output: output, repository: repository)
    }
    
    
}
