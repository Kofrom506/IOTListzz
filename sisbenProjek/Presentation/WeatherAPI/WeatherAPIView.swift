//
//  WeatherAPIView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 25/12/22.
//

import SwiftUI

struct WeatherAPIView: View {
    @ObservedObject var plantListViewModel = WeatherAPIViewModel()
    //    var data: Plant
    @EnvironmentObject var screenRouter: ScreenRouter
    @State private var showingSheet = false
    @State var selectedPlant: Plant?
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
                            Text("Planting Right Now")
                                .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                                .foregroundColor(WWColor.white)
                                .lineLimit(2)
                            
                            Spacer()
                            
                        }
                        .padding(.top, ViewPadding.small)
                        CardView(geo: geo)
                        Spacer()
                            .frame(height: 30)
                        Text("Choose Plant")
                            .font(WWFont.semiBold(fontFamily: .poppins,size: 30))
                            .foregroundColor(WWColor.white)
                            .lineLimit(2)
                        
                        
                        ForEach(Plant.plantList) { plant in
                            CardView(geo: geo, plant: plant)
                                .onTapGesture {
                                    showingSheet.toggle()
                                }
                                .sheet(isPresented: $showingSheet) {
                                    PlantDetailView(plant: plant)
                                }
                        }
                        
                        
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

