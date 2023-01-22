//
//  ChartListViewModel.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 25/12/22.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseDatabaseSwift

class ChartListViewModel: ObservableObject {
    //    @Published var studentList: [User] = [ahmad,budi]
    var ref = Database.database().reference()
    @Published var value: String? = nil
    @Published var x: Int? = nil
    @Published var y: Int? = nil
    @Published var z: Int? = nil
    @Published var date = NSDate()
    @Published private var isEarthquake: Bool = false
    func readValuex(){
        var child = ref.child("test").child("xValue")
        child.observeSingleEvent(of: .value) { snapshot in
            self.x = snapshot.value as? Int ?? 0
            print("readVal")
        }
    }
    func observerDataChangex(){
        
        ref.child("test").child("xValue").observe(.value){
            snapshot in
            self.x = snapshot.value as? Int ?? 0
        }
    }
    func readValuey(){
        var child = ref.child("test").child("yValue")
        child.observeSingleEvent(of: .value) { snapshot in
            self.y = snapshot.value as? Int ?? 0
            print("readVal")
        }
    }
    func observerDataChangey(){
        
        ref.child("test").child("yValue").observe(.value){
            snapshot in
            self.y = snapshot.value as? Int ?? 0
            
            
            
            
        }
    }
    func readValuez(){
        var child = ref.child("test").child("zValue")
        child.observeSingleEvent(of: .value) { snapshot in
            self.z = snapshot.value as? Int ?? 0
            print("readVal")
        }
    }
    func observerDataChangez(){
        
        ref.child("test").child("zValue").observe(.value){
            snapshot in
            self.z = snapshot.value as? Int ?? 0
            
            
            
            
        }
        func observerDataChangez(){
            
            ref.child("test").child("zValue").observe(.value){
                snapshot in
                self.z = snapshot.value as? Int ?? 0
                
                
                
            }
            
        }
        func returnAlert(){
            
        }
        
        
    }
}
