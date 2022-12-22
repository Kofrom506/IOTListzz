//
//  ProfileViewCard.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 12/12/22.
//

import SwiftUI

import SwiftUI

struct ProfileItem: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
    let bgColor: Color
    let fgColor: Color
}



struct ProfileCardView: View {
    
    var profileItems: ProfileItem
    var body: some View {
        HStack (spacing: 10) {
            Image(systemName: profileItems.image)
                .foregroundColor(profileItems.fgColor)
                .font(.title)
                .frame(width: 51, height: 51)
                .background(profileItems.bgColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack (alignment: .leading) {
                Text(profileItems.title)
                    .font(WWFont.medium(size: 16))
                    .foregroundColor(WWColor.black)
                    .lineLimit(1)
                
                Spacer()
                    .frame(height: 2)
                
                Text(profileItems.subTitle)
                    .font(WWFont.regular(size: 12))
                    .foregroundColor(WWColor.grey)
                    .lineLimit(2)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(WWColor.black.opacity(0.6))
        }
        .padding()
        .background(WWColor.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: WWColor.black.opacity(0.01),radius: 50, x: 0, y: 0)
    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView(profileItems: ProfileItem(image: "", title: "Evan", subTitle: "Evan", bgColor: .red, fgColor: .blue))
    }
}
