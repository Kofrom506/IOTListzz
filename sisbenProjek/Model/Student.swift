//
//  Student.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import Foundation


struct User: Hashable{
    let id = UUID()
    let name: String
    let email: String
    let gender: Gender
    let role: Role?
}


var evan = User(name: "Evan",email: "evan@susanto.me", gender: .male, role: .student)
var ahmad = User(name: "Ahmad",email: "ahmad@gmail.com", gender: .male, role: .student)
var budi = User(name: "Budi",email: "budi@gmail.com", gender: .male, role: .student)
var desi = User(name: "Desi",email: "desi@gmail.com", gender: .male, role: .student)
var andi = User(name: "Andi",email: "andi@gmail.com", gender: .male, role: .student)
