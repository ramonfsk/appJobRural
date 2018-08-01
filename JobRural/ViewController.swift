//
//  ViewController.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var typeUser: Int? = 0
    //obtem o tipo de perfil e usar no if
    
    @IBAction func loginAction() {
        if typeUser == 0 {
            performSegue(withIdentifier: "goProducer", sender: nil)
        } else {
            performSegue(withIdentifier: "goWorkers", sender: nil)
        }
    }
    
    @IBAction func goSelectProfile() {
        performSegue(withIdentifier: "goSelectProfile", sender: nil)
    }
    
    @IBAction func selectProducer(_ sender: Any) {
        performSegue(withIdentifier: "goListWorkers", sender: nil)
    }

    @IBAction func selectWorker(_ sender: Any) {
        performSegue(withIdentifier: "goListJobs", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

