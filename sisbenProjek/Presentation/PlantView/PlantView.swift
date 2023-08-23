//
//  PlantView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 03/03/23.
//

import SwiftUI

struct PlantView: View {
    var plant: Plant
    var geo: GeometryProxy
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
//            .background(.red)
            .frame(width: geo.size.width*2/3, height: geo.size.height*1/2)
            .foregroundColor(WWColor.white)
            .overlay(
                VStack(spacing: 0,content: {
                    Image(plant.imageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(30)
                    
                    Text(plant.name)
                        .font(WWFont.semiBold(fontFamily: .poppins,size: 20))
                        .foregroundColor(WWColor.black)
                    Text("Easy")
                        .font(WWFont.regular(fontFamily: .poppins, size: 15))
                        .foregroundColor(.white)
                        .background(
                            Capsule()
                                .foregroundColor(WWColor.greenSoft)
                                .padding(.vertical, -2)
                                .padding(.horizontal, -20)
                        ).padding(10)
                    NavigationLink(destination: mainView()) {
                        Text("Plant Now")
                            .foregroundColor(.white)
                            .font(WWFont.medium(fontFamily: .poppins, size: 15))
                            .frame(maxWidth: .infinity, maxHeight: 40)
                            .background(WWColor.green)
                            .cornerRadius(25)
                            .padding(.horizontal,50)
                        
                    }
                    
                    
                    
                }).padding(.bottom, 50)
                
            )
    }
}


//struct PlantView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantView(plant: Plant.plantList[0])
//    }
//}
