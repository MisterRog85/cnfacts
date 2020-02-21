//
//  FactViewController.swift
//  CNFacts
//
//  Created by William Tomas on 20/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import UIKit
import CNFactsBusinessLogic

class FactViewController: UIViewController {
    
    var interactor: FactInteractorInput?
    var fact: FactViewModelProtocol?
    
    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        chargementView()
    }
    
    convenience init(interactor: FactInteractorInput) {
         self.init(nibName: "FactViewController", bundle: nil)
         self.interactor = interactor
    }
    
    func chargementView() {
        interactor?.retrieveFact()
        

    }
    
    @IBAction func boutonFact(_ sender: UIButton) {
        chargementView()
    }
}

extension FactViewController: FactPresenterOutput {
    func displayFact(_ fact: FactViewModelProtocol) {
        self.fact = fact
        self.factLabel.text = fact.fact
    }
}
