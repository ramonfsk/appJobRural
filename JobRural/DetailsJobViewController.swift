//
//  DetailsJobViewController.swift
//  JobRural
//
//  Created by student on 31/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import UIKit

class DetailsJobViewController: UIViewController {

    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var office: UILabel!
    @IBOutlet weak var salary: UILabel!
    @IBOutlet weak var nation: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var descriptionJob: UILabel!
   
    var job: Job?
    
    @IBAction func backJobs(_ sender: Any) {
        performSegue(withIdentifier: "backToDetailsJob", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.companyName.text = job?.companyName
        self.office.text = job?.office
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
