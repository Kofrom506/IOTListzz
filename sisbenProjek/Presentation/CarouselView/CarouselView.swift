//
//  CarouselView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 15/03/23.
//

import SwiftUI

struct CardView:View{
    var geo: GeometryProxy
    var plant: Plant?
    var body: some View{
        HStack {
            VStack (alignment: .leading, spacing: 0) {
                Text("Planting: " + (plant?.name ?? "Unselected"))
                    .font(WWFont.medium(fontFamily: .poppins,size: 15))
                    .foregroundColor(WWColor.grey)
                    .padding(.bottom, ViewPadding.mini)
                HStack(alignment: .bottom, spacing: 0) {
                    Text(plant?.name ?? "Unselected" )
                        .font(WWFont.semiBold(fontFamily: .poppins,size: 20))
                        .foregroundColor(WWColor.black)
                        .frame(maxHeight: .infinity)
                        .lineLimit(1)
                }
                Text(plant?.description ?? "None")
                    .font(WWFont.light(fontFamily: .poppins,size: 11))
                    .foregroundColor(WWColor.black)
                    .padding(.bottom, ViewPadding.medium)
                    .lineLimit(2)
                
                
            }
            Spacer()
            Image(plant?.imageName ?? "unavailable_plant")
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
    }
}


//struct CarouselView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(geo: GeometryReader().)
//    }
//}
