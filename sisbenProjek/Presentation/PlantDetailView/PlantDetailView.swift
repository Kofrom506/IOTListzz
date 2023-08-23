//
//  PlantDetailView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 22/03/23.
//

import SwiftUI

struct PlantDetailView: View {
    var plant: Plant
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Plant Details")
                .font(WWFont.bold(fontFamily: .poppins, size: 20))
                .frame(maxWidth: .infinity, alignment: .center)
            Image(plant.imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .padding(50)
            HStack(alignment: .center){
                Text(plant.name)
                    .font(WWFont.semiBold(fontFamily: .poppins, size: 25))
               
            }
            Spacer()
                .frame(height: 10)
            Text(plant.description ?? "No Description")
                .font(WWFont.regular(fontFamily: .poppins, size: 15))
                .foregroundColor(WWColor.grey)
                .lineSpacing(3)
            
            
                
            Spacer()
            NavigationLink(destination: mainView()) {
                Text("Plant Now")
                    .foregroundColor(.white)
                    .font(WWFont.medium(fontFamily: .poppins, size: 15))
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(WWColor.green)
                    .cornerRadius(25)
                    .padding(.horizontal,50)
                
            }
            
        }.padding(.horizontal, ViewPadding.xmedium)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plant.plantList[0])
    }
}
