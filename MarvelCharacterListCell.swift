//
//  MarvelCharacterListCellTableViewCell.swift
//  MarvelComics
//
//  Created by Deepak on 02/04/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import UIKit

class MarvelCharacterListCell: UITableViewCell {

    @IBOutlet private weak var characterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populateData(_ urlString: String) {
        if let urlcomp = URLComponents(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg") {
            var urlRequest = URLRequest(url: urlcomp.url!)
                urlRequest.httpMethod = "GET"
            URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                self.characterImageView.image = UIImage(data: data!) ?? nil
            }.resume()
//            URLSession.shared.dataTask(with: URL(string: urlString)!) { (data, urlResponse, error) in
//                self.characterImageView.image = UIImage(data: data!)
//                }.resume()
        }
        
    }

}
