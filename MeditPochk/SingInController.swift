//
//  ViewController.swift
//  MeditPochk
//
//  Created by Student on 11.02.2022.
//

import UIKit
import Alamofire
import SwiftyJSON

class SingInController: UIViewController {

    @IBOutlet weak var inputLogin: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func signInAction(_ sender: UIButton) {
        let url = "http://mskko2021.mad.hakta.pro/api/user/login"
        guard inputPassword.text?.isEmpty == false && inputPassword.text?.isEmpty == false else {
            return showAlert(message: "Поля пустые")
        }
    }
     
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Уведомление", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ок", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

