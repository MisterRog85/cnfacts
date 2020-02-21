//
//  GetFactAPIWorker.swift
//  CNFacts
//
//  Created by William Tomas on 21/02/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import Foundation

class GetFactAPIWorker {
    weak var output: GetFactAPIWorkerOutput?
    var wrapper: APIWrapperProtocol
    
    init(wrapper: APIWrapperProtocol) {
           self.wrapper = wrapper
    }
}

extension GetFactAPIWorker: GetFactAPIWorkerInput {
    func getFact() {
            DispatchQueue.global(qos: .background).async {
            self.wrapper.get(url: URL(string: "https://www.chucknorrisfacts.fr/api/get?data=tri:alea;type:txt;nb:1")!, closure: {
                result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let data):
                        do {
                            try self.output?.getFactDidRetrieveSuccess(factModel: JSONDecoder().decode([GetFactModel].self, from: data)[0])
                        } catch let e {
                            self.output?.getFactDidRetrieveError(error: APIError.serverError)
                        }
                    case .failure(let error):
                        self.output?.getFactDidRetrieveError(error: error)
                    }
                }
            })
        }
    }
    
    
}
