////
////  WeatherAPIViewModel.swift
////  sisbenProjek
////
////  Created by Evan Susanto on 25/12/22.
////
//
//import SwiftUI
//
//struct Weather: Codable, Hashable{
//    let name: String
//    let image: String
//}
//
//class WeatheAPIViewModel: ObservableObject{
//    func fetch(){
//        guard let url = URL(string: "http://api.weatherapi.com/v1/current.json?key=454cba2202f24b40a82235351213110&q=jakarta&aqi=no")else{
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url){[weak self]
//            data, _, error in guard let data = data, error == nil else{
//                return
//            }
//            do{
//                let course = try JSONDecoder().decode([Weather], from: data)
//            }
//            catch{
//                print( "error")
//            }
//        }
//    }task?.resume()
//}
