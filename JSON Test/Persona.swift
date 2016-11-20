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
    var phone: Int
    
    init(username:String, gender:String, first:String, city:String, email:String, phone:Int) {
        self.username = username
        self.gender = gender
        self.first = first
        self.city = city
        self.email = email
        self.phone = phone
    }
    
    var description: String { return "\tDescripción de Persona: \nUsuario: \(self.username)\nGenero: \(self.gender) \nNombre: \(self.first) \nCiudad: \(self.city) \nEmail: \(self.email) \nCelular: \(self.phone)" }
    
}
