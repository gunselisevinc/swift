//
//  ViewController.swift
//  JSON Demo
//
//  Created by gunseli sevinc on 24.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlString = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-07-24&sortBy=publishedAt&apiKey=API_KEY"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check for errors
            if error == nil && data != nil {
                
                //Parse JSON
                let decoder = JSONDecoder()
                
                do{
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    
                    print(newsFeed)
                }
                catch{
                    print("Error in JSON parsing")
                }
                
            }
        }
        
        //Make the API call
        dataTask.resume()
        
    }


}

