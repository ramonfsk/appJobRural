//
//  ManagerJobViewController.swift
//  JobRural
//
//  Created by student on 01/08/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import UIKit

class ManagerJobViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var jobs = ["JOB1", "JOB2"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellRow = tableView.dequeueReusableCell(withIdentifier: "cell")
        cellRow?.textLabel?.text = jobs[indexPath.row]
        
        return cellRow!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goUpdateJob", sender: nil)
    }
    

    @IBAction func addNewJob(_ sender: Any) {
        performSegue(withIdentifier: "goNewJob", sender: nil)
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
