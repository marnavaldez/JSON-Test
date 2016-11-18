//
//  ViewController.swift
//  JSON Test
//
//  Created by MAR on 17/11/16.
//  Copyright © 2016 MAR. All rights reserved.
//

import UIKit
import AlamofireDomain

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let myURL = "https://randomuser.me/api/"
        
        AlamofireDomain.request(myURL).responseJSON { response in
//            print(response.request!)  // original URL request
//            print(response.response!) // HTTP URL response
//            print(response.data!)     // server data
//            print(response.result)   // result of response serialization
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
            
            print("HIIII")
            print(response)
            print("GoodBYEEEE")
        }
        
    }


}

