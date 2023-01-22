//
//  HomePageView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI

struct HomePageNewView: View {
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
                            Text("Hi, Wiryanata")
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
                                        Text("3")
                                            .foregroundColor(WWColor.black)
                                            .font(WWFont.medium(fontFamily: .poppins,size: 14))
                                            .padding(.leading, ViewPadding.mini)
                                    })
                                )
                        }
                        .padding(.top, ViewPadding.small)
                        
                       
                        VStack {
                            Text("Tips Of The Day")
                                .font(WWFont.semiBold(fontFamily: .poppins, size: 18))
                                .foregroundColor(WWColor.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 10)
                            Text("Don't Forget To Bring Your Umbrella")
                                .padding(.horizontal, ViewPadding.large)
                                .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                .foregroundColor(WWColor.white)
                                
                                .multilineTextAlignment(.center)
                                .lineSpacing(ViewPadding.small)
                                .padding(.bottom, 10)
                            Text("- Wiryanata Sunardi")
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

struct HomePageNewView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageNewView()
    }
}
