//
//  ViewController.swift
//  picker view
//
//  Created by Deepak on 03/05/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var details: UIPickerView!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        
        
        
        let lbl = UITextField(frame: CGRect(x:100, y:150, width:150, height:40))
        lbl.text = "india"
        lbl.textAlignment = .center
        lbl.backgroundColor = .gray
        self.view.addSubview(lbl)
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

