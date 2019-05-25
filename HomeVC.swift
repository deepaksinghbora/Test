//
//  HomeVC.swift
//  MarvelComics
//
//  Created by Deepak on 28/03/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import Foundation
import UIKit

class HomeVC: UIViewController {
    
}

extension HomeVC: ComicsListingsUpdator {
    
    func didReceiveResponse() {
        DispatchQueue.main.async {
            self.charactersListingsTV.reloadData()
        }
    }
    
    func didFailedReceivingResponse() {
        
    }
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MarvelCharacterListCell", for: indexPath) as? MarvelCharacterListCell else { fatalError("Unable to dequeue cell")}
        cell.populateData("\(controller.comicsListingModel!.results[indexPath.row].thumbnailUrl).jpg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let _ = controller.comicsListingModel {
            return controller.comicsListingModel!.results.count
        } else {
            return 0
        }
    }
    
}
