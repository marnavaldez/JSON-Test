//
//  Persona.swift
//  JSON Test
//
//  Created by MAR on 19/11/16.
//  Copyright © 2016 MAR. All rights reserved.
//

import Foundation

class Persona {
    var username: String
    var gender: String
    var first: String
    var city: String
    var email: String
    var phone: String
    
    init(){
        self.username = ""
        self.gender = ""
        self.first = ""
        self.city = ""
        self.email = ""
        self.phone = ""
    }
    
    init(username:String, gender:String, first:String, city:String, email:String, phone:String) {
        self.username = username
        self.gender = gender
        self.first = first
        self.city = city
        self.email = email
        self.phone = phone
    }
    
    var description: String { return "\tDescripción de Persona: \nUsuario: \(self.username)\nGenero: \(self.gender) \nNombre: \(self.first) \nCiudad: \(self.city) \nEmail: \(self.email) \nCelular: \(self.phone)" }
    
}
