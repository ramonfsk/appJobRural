//
//  Vagas.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import Foundation

class Job {
    var idJob: Int
    var companyName: String
    var office: String
    var description: String
    var salary: Double
    var state: String
    var postDate: String
    
    var jobs: [Job]
    
    init(json: [String: AnyObject]){
        self.idJob = json["idJob"] as? Int ?? 0
        self.companyName = json["companyName"] as? String ?? ""
        self.office = json["office"] as? String ?? ""
        self.description = json["description"] as? String ?? ""
        self.salary = json["salary"] as? Double ?? 0.0
        self.state = json["state"] as? String ?? ""
        self.postDate = json["postDate"] as? String ?? ""
        
        self.jobs = [Job]()
        
        if let job = json["jobs"] as? [ [String: String] ] {
            for jsonJob in job {
                let newJob = Job(json: jsonJob as [String : AnyObject])
                
                self.jobs.append(newJob)
            }
        }
    }
}

class JobDAO {
    static func getJobs (callback: @escaping ((Job) -> Void)){
        let endpoint: String = "https://jobrural.mybluemix.net/visualizar"
        
        guard let url = URL(string: endpoint) else {
            print("Error: Nao foi possivel criar URL!")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            _ = String(data: data!, encoding: String.Encoding.utf8)
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        
                        let jobs = Job(json: json[0])
                        
                        //print("Existem \(jobs.count) vagas.")
                        
                        callback(jobs)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
        })
        task.resume()
    }
}

