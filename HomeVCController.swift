//
//  HomeVCController.swift
//  MarvelComics
//
//  Created by Deepak on 28/03/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import Foundation

protocol ComicsListingsUpdator: class {
    
    func didReceiveResponse()
    func didFailedReceivingResponse()
}

class HomeVCController {
    
    weak var delegate: ComicsListingsUpdator?
    var comicsListingModel: ComicsListingModel?
    
    private func successHandler(_ dictionary: [String:Any]) -> Void {
        comicsListingModel = ComicsListingModel(dictionary["data"] as! [String:Any])
        delegate?.didReceiveResponse()
    }
    
    private func failureHandler(_ error: Error) -> Void {
        delegate?.didFailedReceivingResponse()
    }
    
    func getComicsListings() {
        
        var params: WebServices.parameters
        params.success = successHandler
        params.failure = failureHandler
        params.passedParams = [:]
        
        WebServices.getComicsLists(params, endPoint: .characters)
    }
    
}
