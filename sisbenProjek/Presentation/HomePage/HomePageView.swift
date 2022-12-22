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
    @State var userRole: Role = .student
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
                                        Image(systemName: "flame.fill")
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
                            Image("student")
                                .resizable()
                                .frame(width: 20, height: 20)

                            Text("Student")
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
                        
                        HStack {
                            
                            VStack (alignment: .leading, spacing: 0) {
                                Text("RIGHT NOW")
                                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                                    .foregroundColor(WWColor.grey)
                                    .padding(.bottom, ViewPadding.mini)
                                HStack(alignment: .bottom, spacing: 0) {
                                    Text("32°")
                                        .font(WWFont.semiBold(fontFamily: .poppins,size: 32))
                                        .foregroundColor(WWColor.black)
                                        .frame(maxHeight: .infinity)
                                        .lineLimit(1)
                                    Text("C")
                                        .font(WWFont.semiBold(fontFamily: .poppins,size: 20))
                                        .foregroundColor(WWColor.black)
                                        .padding(.bottom,2)
                                        .lineLimit(1)
                                }
                                
                                Text("Light Thunderstorms")
                                    .font(WWFont.light(fontFamily: .poppins,size: 11))
                                    .foregroundColor(WWColor.black)
                                    .padding(.bottom, ViewPadding.medium)
                                    .lineLimit(1)
                                
                               
                            }
                            Spacer()
                            Image(systemName: "sun.min.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geo.size.height*0.1)
                                .foregroundColor(WWColor.orange)
                       
                
                                
                        }.padding(.all, ViewPadding.xmedium)
                            .frame(maxWidth: .infinity)
                            .background(WWColor.purpleBackground)
                            .cornerRadius(20)
                            .padding(.top, ViewPadding.medium)
                        .padding(.bottom, ViewPadding.small)
                        
                        VStack {
                            Text("Tips Of The Day")
                                .font(WWFont.semiBold(fontFamily: .poppins, size: 18))
                                .foregroundColor(WWColor.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 10)
                            Text("80% of success is showing up!")
                                .padding(.horizontal, ViewPadding.large)
                                .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                .foregroundColor(WWColor.white)
                                
                                .multilineTextAlignment(.center)
                                .lineSpacing(ViewPadding.small)
                                .padding(.bottom, 10)
                            Text("- Evan Susanto")
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
                                Text("Plan Your Meeting")
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
