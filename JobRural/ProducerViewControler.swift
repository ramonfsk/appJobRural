//
//  ProducerViewControler.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import UIKit

class ProducerViewControler: UIViewController {

    @IBAction func backJobs(_ sender: Any) {
        performSegue(withIdentifier: "backToUpdateJob", sender: nil)
    }
    @IBAction func backJobs2(_ sender: Any) {
        performSegue(withIdentifier: "backToNewJob", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
