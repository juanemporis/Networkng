//
//  ViewController.swift
//  Networkng
//
//  Created by wendy manrique on 30/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = ""
        nameLabel.numberOfLines = 0
        emailLabel.text = ""
        emailLabel.numberOfLines = 0
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
    }
    
    @IBAction func getUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        //Se pasa el id del usuario que queremos consultar
        NetworkingProvider.shared.getUser(id: 123) { (User) in
            self.activityIndicator.startAnimating()
            
            self.nameLabel.text = User.name
        
            self.emailLabel.text = User.email
            
        }failure: { (error) in
            self.activityIndicator.startAnimating()
            
            self.nameLabel.text = error.debugDescription
        }
    }
    
}

