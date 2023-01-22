//
//  ChartListView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 25/12/22.
//

import SwiftUI
import SwiftChart

import Charts

struct ChartListView: View {
    @StateObject private var viewModel = ChartListViewModel()
    
    
    
    var body: some View {
        ZStack {
            WWColor.gradientPurple
                .ignoresSafeArea()
            GeometryReader{geo in
                VStack{
                    ScrollView(showsIndicators: false) {
                        VStack (alignment: .leading, spacing: ViewPadding.mini) {
                            HStack {
                                Text("Earthquake Sensor")
                                    .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                                    .foregroundColor(WWColor.white)
                                    .lineLimit(2)
                            }
                            .padding(.top, ViewPadding.small)
                            Spacer()
                                .frame(height: 30)
                            if(viewModel.x != nil && viewModel.y != nil && viewModel.z != nil){
                                if(viewModel.x! > 50  || viewModel.y! > 200 || viewModel.z! > 200 || viewModel.x! < -50  || viewModel.y! < -50 || viewModel.z! < -50){
                                    VStack{
                                        LottieView(lottieFile: "warning")
                                            .frame(width: 100, height: 100)
                                        Text("Earthquake Detected, Get Under Cover")
                                            .padding(.horizontal, ViewPadding.large)
                                            .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                            .foregroundColor(WWColor.black)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(10)
                                            .lineSpacing(ViewPadding.small)
                                            .padding(.bottom, 10)
                                    }
                                    .frame(width: geo.size.width * 0.8)
                                    .padding(ViewPadding.xmedium)
                                    .background(WWColor.white_card_bg)
                                    .cornerRadius(20)
                                    .padding(.vertical, ViewPadding.small)
                                }else{
                                    VStack{
                                        Image("safe")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                        Spacer()
                                            .frame(height:10)
                                        
                                        
                                        Text("You're Safe, No Need To Panic Right Now")
                                            .padding(.horizontal, ViewPadding.large)
                                            .font(WWFont.regular(fontFamily: .leagueSpartan, size: 18))
                                            .foregroundColor(WWColor.black)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(10)
                                            .lineSpacing(ViewPadding.small)
                                            .padding(.bottom, 10)
                                    }
                                    .frame(width: geo.size.width * 0.8)
                                    .padding(ViewPadding.xmedium)
                                    .background(WWColor.white_card_bg)
                                    .cornerRadius(20)
                                    .padding(.vertical, ViewPadding.small)
                                }
                            }
                            Spacer()
                                .frame(height: 30)
                            HStack {
                                Text("Sensor Reading")
                                    .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                                    .foregroundColor(WWColor.white)
                                    .lineLimit(2)
                            }
                            .padding(.top, ViewPadding.small)
                            
                            Spacer()
                                .frame(height: 10)
                            HStack{
                                if(viewModel.x != nil){
                                    VStack(alignment: .center){
                                        Text(String(viewModel.x!))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("X Value")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.bold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }else{
                                    VStack(alignment: .center){
                                        Text("Loading")
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("X Value")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.bold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }
                                Spacer()
                                if(viewModel.y != nil){
                                    VStack(alignment: .center){
                                        Text(String(viewModel.y!))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("Y Value")
                                            .foregroundColor(WWColor.grey)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.semiBold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }else{
                                    VStack(alignment: .center){
                                        Text("Loading")
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("Y Value")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.bold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }
                                Spacer()
                                if(viewModel.z != nil){
                                    VStack(alignment: .center){
                                        Text(String(viewModel.z!))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("Z Value")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.bold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }else{
                                    VStack(alignment: .center){
                                        Text("Loading")
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.medium(fontFamily: .leagueSpartan, size:30))
                                        Text("Z Value")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding(.top, ViewPadding.medium)
                                            .font(WWFont.bold(fontFamily: .leagueSpartan, size:15))
                                        
                                    }.background()
                                        .cornerRadius(15)
                                    
                                    
                                }
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    
                }.padding(.horizontal, ViewPadding.xmedium)
                    .padding(.bottom, ViewPadding.xxxlarge)
                
                
            }
        }.onAppear{
            onAppear()
        }
    }
    
    
}

extension ChartListView {
    
    private func onAppear() {
        Task {
            viewModel.readValuex()
            viewModel.readValuey()
            viewModel.readValuez()
            viewModel.observerDataChangex()
            viewModel.observerDataChangey()
            viewModel.observerDataChangez()
            
            
        }
    }
}


struct ChartListView_Previews: PreviewProvider {
    static var previews: some View {
        ChartListView()
    }
}
