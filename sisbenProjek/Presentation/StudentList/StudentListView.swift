//
//  StudentListView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI
struct StudentListView: View {
    @StateObject var viewModel = StudentListViewModel()
    @State var name: String = ""
    @State var searchText: String = ""
    var body: some View {
        ZStack{
            WWColor.gradientPurple
                .ignoresSafeArea()
            VStack(alignment: .center) {
                VStack{
                    Text("Device List")
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
                    Text("EC Level:" )
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
                    Text("PH Level:")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    Text(String(viewModel.deviceList.count))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, ViewPadding.medium)
                        .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                    
                }.padding(.horizontal,ViewPadding.large)
                
                
                Form{
                    Section {
                        ForEach(viewModel.deviceList, id: \.id) { device in
                            
                            if((device.name).contains(searchText)){
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
                                            Text(device.name)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 17))

                                            Text(device.position)
                                                .foregroundColor(WWColor.grey)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 12))
                                        }
                                    }

                                }
                            }
                            else if(searchText == ""){
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "cpu")
                                            .scaledToFit()
                                            .frame(maxWidth: 30, maxHeight: 30)
                                            .background(
                                                WWColor.bluePastel

                                            )
                                            .clipShape(Circle())
                                        VStack(alignment: .leading){
                                            Text(device.name)
                                                .font(WWFont.medium(fontFamily: .poppins, size: 17))

                                            Text(device.position)
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
        print("")
//        viewModel.deviceList.remove(atOffsets: offsets)
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
