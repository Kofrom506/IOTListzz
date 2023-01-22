//
//  WeatherAPIView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 25/12/22.
//

import SwiftUI

struct WeatherAPIView: View {
    @State var userRole: Role = .student
    var body: some View {
        GeometryReader{geo in
            ZStack {
                WWColor.gradientOrangeBG
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
                            Text("Temperature Today")
                                .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                                .foregroundColor(WWColor.white)
                                .lineLimit(2)
                            
                            Spacer()
            
                        }
                        .padding(.top, ViewPadding.small)
                     
                        
                        HStack {
                            
                            VStack (alignment: .leading, spacing: 0) {
                                Text("RIGHT NOW")
                                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                                    .foregroundColor(WWColor.grey)
                                    .padding(.bottom, ViewPadding.mini)
                                HStack(alignment: .bottom, spacing: 0) {
                                    Text("30°")
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
                                
                                Text("Jakarta Raya")
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
                        Spacer()
                            .frame(height: 30)
                        Text("Earlier Temperature")
                            .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                            .foregroundColor(WWColor.white)
                            .lineLimit(2)
                        HStack {
                            VStack (alignment: .leading, spacing: 0) {
                                Text("Yesterday")
                                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                                    .foregroundColor(WWColor.grey)
                                    .padding(.bottom, ViewPadding.mini)
                                HStack(alignment: .bottom, spacing: 0) {
                                    Text("27°")
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
                                
                                Text("Jakarta Raya")
                                    .font(WWFont.light(fontFamily: .poppins,size: 11))
                                    .foregroundColor(WWColor.black)
                                    .padding(.bottom, ViewPadding.medium)
                                    .lineLimit(1)
                                
                                
                            }
                            Spacer()
                            Image(systemName: "wind")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geo.size.height*0.1)
                                .foregroundColor(WWColor.green)
                            
                            
                            
                        }.padding(.all, ViewPadding.xmedium)
                            .frame(maxWidth: .infinity)
                            .background(WWColor.purpleBackground)
                            .cornerRadius(20)
                            .padding(.top, ViewPadding.medium)
                            .padding(.bottom, ViewPadding.small)
                        HStack {
                            
                            VStack (alignment: .leading, spacing: 0) {
                                Text("2 Days Ago")
                                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                                    .foregroundColor(WWColor.grey)
                                    .padding(.bottom, ViewPadding.mini)
                                HStack(alignment: .bottom, spacing: 0) {
                                    Text("25.6°")
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
                                
                                Text("Jakarta Raya")
                                    .font(WWFont.light(fontFamily: .poppins,size: 11))
                                    .foregroundColor(WWColor.black)
                                    .padding(.bottom, ViewPadding.medium)
                                    .lineLimit(1)
                                
                                
                            }
                            Spacer()
                            Image(systemName: "cloud.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geo.size.height*0.1)
                                .foregroundColor(WWColor.purple)
                            
                            
                            
                        }.padding(.all, ViewPadding.xmedium)
                            .frame(maxWidth: .infinity)
                            .background(WWColor.purpleBackground)
                            .cornerRadius(20)
                            .padding(.top, ViewPadding.medium)
                            .padding(.bottom, ViewPadding.small)
                        HStack {
                            
                            VStack (alignment: .leading, spacing: 0) {
                                Text("3 Days Ago")
                                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                                    .foregroundColor(WWColor.grey)
                                    .padding(.bottom, ViewPadding.mini)
                                HStack(alignment: .bottom, spacing: 0) {
                                    Text("25°")
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
                                
                                Text("Jakarta Raya")
                                    .font(WWFont.light(fontFamily: .poppins,size: 11))
                                    .foregroundColor(WWColor.black)
                                    .padding(.bottom, ViewPadding.medium)
                                    .lineLimit(1)
                                
                                
                            }
                            Spacer()
                            Image(systemName: "cloud.rain.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geo.size.height*0.1)
                                .foregroundColor(WWColor.blue)
                            
                            
                            
                        }.padding(.all, ViewPadding.xmedium)
                            .frame(maxWidth: .infinity)
                            .background(WWColor.purpleBackground)
                            .cornerRadius(20)
                            .padding(.top, ViewPadding.medium)
                            .padding(.bottom, ViewPadding.small)
                    }
                    
                    .padding(.horizontal, ViewPadding.xmedium)
                    .padding(.bottom, ViewPadding.xxxlarge)
                }
            }
        }
    }
}
struct WeatherAPIView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherAPIView()
    }
}
