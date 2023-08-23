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
    @Published var deviceList: [Device] = [device1,device2,device3]
    var ref = Database.database().reference()
    @Published var name: String = ""
    @Published var searchText: String = ""
    @Published var value: String? = nil
    @Published var humidity: String? = nil
    @Published var temperature: String? = nil
    @Published var range: Int? = nil
    @Published var attendance: Int? = nil
//    @Binding private var isEarthquake: Bool = false
    func readValue(){
        var child = ref.child("Sensor").child("data")
//        child.observeSingleEvent(of: .value) { snapshot in
//            self.value = snapshot.value as? String
//            self.studentList.append(device1)
//        }
    }
    func observerDataChange(){
//        ref.child("Sensor").child("data").observe(.value){
//            snapshot in
//            self.value = snapshot.value as? String ?? "Load Failed"
//            self.studentList.append(device1)
//        }
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
    @Published var dataTanam: [DataTanam] = []
    
    
    func fetchData() {
        guard let url = URL(string: "https://dashboard.greenhouse-project.my.id/api/dataTanam/1") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decodedData = try decoder.decode([DataTanam].self, from: data)
                    DispatchQueue.main.async {
                        self.dataTanam = decodedData
                    }
                } catch {
                    print("JSON decoding error: \(error)")
                }
            }
        }.resume()
    }
    func observerDataChangeA(){
//        ref.child("Attendance").child("bool").observe(.value){
//            snapshot in
//            self.attendance = snapshot.value as? Int ?? 0
//            self.studentList.append(device1)
//        }
    }

//    func readObject(){
//
//    }

}


struct DataTanam: Identifiable, Decodable {
    let id: Int
    let tanggal_semai: String
    let tanggal_tanam: String
    let tanggal_panen: String
    let jenis_tanaman: String?
     let status: Int
}

