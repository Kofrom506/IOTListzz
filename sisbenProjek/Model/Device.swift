//
//  Student.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import Foundation


struct Device: Hashable{
    let id = UUID()
    let name: String
    let position: String
//    let gender: Gender
//    let role: Role?
}

var device1 = Device(name: "Hidroponik Master ", position: "Rumah Pak Taufiq")
var device2 = Device(name: "Hidroponik Slave ", position: "Rumah Pak Taufiq")
var device3 = Device(name: "Hidroponik Kangkung ", position: "Kost Evan")
var device4 = Device(name: "Hidroponik Jamur ", position: "Kost Evan")


//var evan = Device(name: "Evan",email: "evan@susanto.me", gender: .male, role: .student)
//var ahmad = Device(name: "Ahmad",email: "ahmad@gmail.com", gender: .male, role: .student)
//var budi = Device(name: "Budi",email: "budi@gmail.com", gender: .male, role: .student)
//var desi = Device(name: "Desi",email: "desi@gmail.com", gender: .male, role: .student)
//var andi = Device(name: "Andi",email: "andi@gmail.com", gender: .male, role: .student)
