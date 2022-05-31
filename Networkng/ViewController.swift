//
//  ViewController.swift
//  Networkng
//
//  Created by wendy manrique on 30/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func getUserAction(_ sender: Any) {
        //Se pasa el id del usuario que queremos consultar
        NetworkingProvider.shared.getUser(id: 123)
    }
    
}

