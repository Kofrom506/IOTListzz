//
//  StudentListViewModel.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 12/12/22.
//

import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseDatabaseSwift

class StudentListViewModel: ObservableObject {
    @Published var studentList: [User] = [ahmad,budi]
    var ref = Database.database().reference()
    @Published var value: String? = nil
    @Published var humidity: String? = nil
    @Published var temperature: String? = nil
    @Published var range: Int? = nil
    @Published var attendance: Int? = nil
    func readValue(){
        var child = ref.child("Sensor").child("data")
        child.observeSingleEvent(of: .value) { snapshot in
            self.value = snapshot.value as? String
            self.studentList.append(evan)
        }
    }
    func observerDataChange(){
        ref.child("Sensor").child("data").observe(.value){
            snapshot in
            self.value = snapshot.value as? String ?? "Load Failed"
            self.studentList.append(evan)
        }
    }
    func readValueh(){
        var child = ref.child("DHT").child("temperature")
        child.observeSingleEvent(of: .value) { snapshot in
            self.humidity = snapshot.value as? String ?? ""
            
        }
    }
    func observerDataChangeh(){
        ref.child("DHT").child("temperature").observe(.value){
            snapshot in
            self.humidity = snapshot.value as? String ?? "Load Failed"
            
        }
    }
    func readValuet(){
        var child = ref.child("DHT").child("humidity")
        child.observeSingleEvent(of: .value) { snapshot in
            self.temperature = snapshot.value as? String ?? ""
            
        }
    }
    func observerDataChanget(){
        print("haha")
        ref.child("DHT").child("humidity").observe(.value){
            snapshot in
            self.temperature = snapshot.value as? String ?? "Load Failed"
          
        }
    }
    func readValueb(){
        var child = ref.child("DHT").child("bool")
        child.observeSingleEvent(of: .value) { snapshot in
            self.range = snapshot.value as? Int ?? 0
            print("readVal")
        }
    }
    func observerDataChangeb(){
 
        ref.child("DHT").child("bool").observe(.value){
            snapshot in
            self.range = snapshot.value as? Int ?? 0
         
            
        
          
        }
    }
    func observerDataChangeA(){
        ref.child("Attendance").child("bool").observe(.value){
            snapshot in
            self.attendance = snapshot.value as? Int ?? 0
            self.studentList.append(evan)
        }
    }
//    func readObject(){
//        
//    }
    
}
