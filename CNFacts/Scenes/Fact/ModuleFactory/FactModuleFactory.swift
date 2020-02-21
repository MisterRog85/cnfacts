//
//  FactModuleFactory.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import UIKit
import CNFactsBusinessLogic

class FactModuleFactory {
    var interactorModuleFactory: FactBLModuleFactoryProtocol
    
    init(interactorModuleFactory: FactBLModuleFactoryProtocol) {
        self.interactorModuleFactory = interactorModuleFactory
    }
}

extension FactModuleFactory: FactModuleFactoryProtocol {
    func makeView() -> UIViewController {
        let presenter = FactPresenter()
        let wrapper = APIWrapper()
        let worker = GetFactAPIWorker(wrapper: wrapper)
        let repository = GetFactRepository(worker: worker)
        let interactor = interactorModuleFactory.makeInteractor(output: presenter, repository: repository)
        let viewController = FactViewController(interactor: interactor)
        presenter.output = viewController
        return viewController
    }   
}
