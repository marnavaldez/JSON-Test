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
            
            print(response)
            
            //Getting data and creating the object Persona
            let result = response.result
            
            var persona = self.getPersona(username: "marnavaldez")
            
            if let object = result.value as? Dictionary<String, AnyObject> {
                if let results = object["results"]![0] as? Dictionary<String, AnyObject> {
                    if let webGender = results["gender"] as? String {
                        
                        persona.gender = webGender
                        print("....\(webGender).....")
                    }
                        
                    
                    
                }
                
            }
            
            var threeDoubles = Array(repeating: 2, count: 3)
            
            print("\(threeDoubles)")
            
            print(persona.description)
            
        }
        
    }
    
    func getPersona(username:String) -> Persona {
        let persona = Persona(username: username,gender: "H",first: "Alberto", city: "Zacatecas", email: "marnavaldez@gmail.com",phone: 4921077652);
        
        return persona
    }


}

