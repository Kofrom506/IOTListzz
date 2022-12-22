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


