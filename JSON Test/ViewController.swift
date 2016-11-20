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
            //            print(response)
            
            //Getting data and creating the object Persona
            let result = response.result
            let persona = Persona()
            
            if let object = result.value as? Dictionary<String, AnyObject> {
                if let results = object["results"]![0] as? Dictionary<String, AnyObject> {
                    // Gender
                    persona.gender = (results["gender"]! as? String)!
                    
                    // First Name
                    if let name = results["name"]! as? Dictionary<String, AnyObject> {
//                        persona.first = (name["first"]! as? String)!
                        if let webFirst = name["first"]! as? String {
                          persona.first = webFirst.capitalized
                        }
                    }
                    
                    // Location City
                    if let location = results["location"]! as? Dictionary<String,AnyObject> {
                        persona.city = (location["city"]! as? String)!.capitalized
                    }
                    
                    // Email
                    persona.email = (results["email"]! as? String)!
                    
                    // Phone
                    persona.phone = (results["phone"]! as? String)!
                    
                    // Username
                    if let login = results["login"]! as? Dictionary<String, AnyObject> {
                        persona.username = (login["username"]! as? String)!
                    }
                    
                }//if results
                
            }//if object
        
            print("\(persona.description)")
        
        }//AlamofireDomain
        
    }
    
    func getPersonaFromJSON(username:String) -> Persona {
        
        let persona = Persona(username: username,gender: "H",first: "Alberto", city: "Zacatecas", email: "marnavaldez@gmail.com",phone: "(492) 107 7652")

        
        return persona
    }


}

