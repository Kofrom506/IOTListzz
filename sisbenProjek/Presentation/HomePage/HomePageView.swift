//
//  HomePageView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI

struct HomePageView: View {
//    @EnvironmentObject var order: Order
    @State var selectedDate:Date=Date()
    @State var userRole: Role = .hobbyist
    @State var search: String = ""
    var body: some View {
        GeometryReader { geo in
            ZStack {
                WWColor.gradientGreenBG
                    .ignoresSafeArea()
                Image("bg_panjang")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                VStack{
                    Image("leaves_bg")
                        
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .blendMode(.softLight)
                        .ignoresSafeArea()
                    Spacer()
                }
                
                ScrollView(showsIndicators: false) {
                    VStack (alignment: .leading, spacing: ViewPadding.mini) {
                        
                        HStack {
                            Text("Hi, Evan")
                                .font(WWFont.semiBold(fontFamily: .poppins,size: 32))
                                .foregroundColor(WWColor.white)
                                .lineLimit(1)
                            
                            Spacer()
                            
                            Circle()
                                .foregroundColor(WWColor.white)
                                .frame(width: 48, height: 48)
                                .overlay(
                                    HStack(alignment: .center, spacing: 0, content: {
                                        Image(systemName: "bell.fill")
                                            .foregroundColor(WWColor.orange)
                                        Text("10")
                                            .foregroundColor(WWColor.black)
                                            .font(WWFont.medium(fontFamily: .poppins,size: 14))
                                            .padding(.leading, ViewPadding.mini)
                                    })
                                )
                        }
                        .padding(.top, ViewPadding.small)
                        
                        HStack(spacing: ViewPadding.small) {
                            Image("hobbyist")
                                .resizable()
                                .frame(width: 20, height: 20)

                            Text("Hobbyist")
                                .foregroundColor(WWColor.black)
                                .font(WWFont.medium(fontFamily: .poppins,size: 14))
                                .padding(.trailing, ViewPadding.mini)
                        }
                        .padding(.vertical, ViewPadding.small)
                        .padding(.horizontal, ViewPadding.medium)
                        .background(WWColor.white)
                        .cornerRadius(40)
                        .padding(.top, ViewPadding.mini)
                        .padding(.bottom, ViewPadding.small)
                        
                        TextFieldWish(hintText: "Search", value: $search, imageName: "magnifyingglass")
                            .padding(.vertical, ViewPadding.small)
                            .padding(.bottom, ViewPadding.small)
                        
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack(spacing: 20){
                                ForEach(Plant.plantList) { plant in
                                    PlantView(plant: plant,geo: geo)
                                        .rotation3DEffect(Angle(degrees: Double(geo.frame(in: .global).minX) / -20), axis: (x: 0.0, y: 10.0, z: 0.0))
                                }
                            }.padding(.horizontal, ViewPadding.xmedium)
                        }.shadow(radius: 10)
                            .padding(.horizontal, -ViewPadding.xmedium)
                        VStack {
                            Text("Tips Of The Day")
                                .font(WWFont.semiBold(fontFamily: .poppins, size: 18))
                                .foregroundColor(WWColor.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 10)
                            Text("Hydroponics create sustainable future")
                                .padding(.horizontal, ViewPadding.large)
                                .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                .foregroundColor(WWColor.white)
                                
                                .multilineTextAlignment(.center)
                                .lineSpacing(ViewPadding.small)
                                .padding(.bottom, 10)
                            Text("- WHO")
                                .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                .frame(maxWidth: .infinity ,alignment: .trailing)
                                .foregroundColor(WWColor.white)

                            
                        }
                        .padding(ViewPadding.xmedium)
                        .background(WWColor.gradientCard)
                        .cornerRadius(20)
                        .padding(.vertical, ViewPadding.small)
                        
                        VStack (alignment: .leading, spacing: ViewPadding.medium) {
                            HStack {
                                Text("Plan Your Planting Schedule")
                                    .font(WWFont.medium(fontFamily: .poppins, size: 20))
                                    .foregroundColor(WWColor.black)
                                Spacer()
//
                            }
                            DatePicker("Select a Date", selection: $selectedDate)
                                .accentColor(WWColor.purpleSoft)
                                .datePickerStyle(GraphicalDatePickerStyle())
                            
                        }
                        .padding(ViewPadding.xmedium)
                        .frame(maxWidth: .infinity)
                        .background(WWColor.purpleBackground)
                        .cornerRadius(20)
                        .padding(.vertical, ViewPadding.small)
                    }
                    .padding(.horizontal, ViewPadding.xmedium)
                    .padding(.bottom, ViewPadding.xxxlarge)
                }
            }
        }
        .onAppear {
            onAppear()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
