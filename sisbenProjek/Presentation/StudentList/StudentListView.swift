//
//  StudentListView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI


var evan = User(name: "Evan",email: "evan@susanto.me", gender: .male, role: .student)
var ahmad = User(name: "Ahmad",email: "ahmad@gmail.com", gender: .male, role: .student)
var budi = User(name: "Budi",email: "budi@gmail.com", gender: .male, role: .student)
var desi = User(name: "Desi",email: "desi@gmail.com", gender: .male, role: .student)
var andi = User(name: "Andi",email: "andi@gmail.com", gender: .male, role: .student)

struct StudentListView: View {
    @StateObject var viewModel = StudentListViewModel()
//    @State var studentList: [User] = [ahmad,budi,desi,andi]
    @State var name: String = ""
    @State var searchText: String = ""
    var body: some View {
        ZStack{
            WWColor.gradientPurple
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                VStack{
                    
                    Text("Student List")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:35))
                    Capsule()
                        .foregroundColor(WWColor.white)
                        .frame(height: 55)
                        .overlay(
                            HStack(alignment: .center,spacing: 20,content: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(WWColor.grey)
                                TextField("Search", text: $searchText)
                                    .font(WWFont.regular(fontFamily: .poppins, size: 14))
                                    .foregroundColor(WWColor.grey)
                            })
                            .padding(.horizontal, ViewPadding.xmedium)
                            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                        )
                        .padding(.vertical, ViewPadding.mini)
                }.padding(.horizontal,ViewPadding.large)
                HStack {
                    Text("Temperature:" )
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:13))
                    if(viewModel.temperature != nil){
                        Text(viewModel.temperature!)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    }else{
                        Text("Loading")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    }
                    Text("Humidity:")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    if(viewModel.humidity != nil){
                        Text(viewModel.humidity!)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    }else{
                        Text("Loading")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))                    }
                }.padding(.horizontal,ViewPadding.large)
                HStack {
                    Text("Range:" )
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    if(viewModel.range != nil){
                        Text(String(viewModel.range!) + " cm")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    }else{
                        Text("Loading")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, ViewPadding.medium)
                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    }
                    Text("Counter:")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    Text(String(viewModel.studentList.count))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    
                }.padding(.horizontal,ViewPadding.large)
                
                
                Form{
                    Section {
                        ForEach(viewModel.studentList, id: \.id) { student in
                            if((student.name).contains(searchText)){
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "person")
                                            .scaledToFit()
                                            .frame(maxWidth: 30, maxHeight: 30)
                                            .background(
                                                WWColor.bluePastel
                                                
                                            )
                                            .clipShape(Circle())
                                        VStack(alignment: .leading){
                                            Text(student.name)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 17))
                                            
                                            Text(student.email)
                                                .foregroundColor(WWColor.grey)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 12))
                                        }
                                    }
                                    
                                }
                            }
                            else if(searchText == ""){
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "person")
                                            .scaledToFit()
                                            .frame(maxWidth: 30, maxHeight: 30)
                                            .background(
                                                WWColor.bluePastel
                                                
                                            )
                                            .clipShape(Circle())
                                        VStack(alignment: .leading){
                                            Text(student.name)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 17))
                                            
                                            Text(student.email)
                                                .foregroundColor(WWColor.grey)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 12))
                                        }
                                    }
                                    
                                }
                            }
                            
                        }
                        
                    }
                }
                    
                
            }
            
        }.onAppear{
            onAppear()
            
        }
        
    }
    func delete(at offsets: IndexSet){
        viewModel.studentList.remove(atOffsets: offsets)
    }
    
    
}


extension StudentListView {
    
    private func onAppear() {
        Task {
            viewModel.readValue()
            viewModel.readValueh()
            viewModel.readValuet()
            viewModel.readValueb()
            viewModel.observerDataChange()
            viewModel.observerDataChanget()
            viewModel.observerDataChangeh()
            viewModel.observerDataChangeb()
//            if(true){
               
//            }
            
        }
    }
}
struct StudentListView_Previews: PreviewProvider {
    static var previews: some View {
        StudentListView()
    }
}
