//
//  EmptyStateView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI

struct EmptyStateView: View {
    private let width: CGFloat = 750
    private var imageLength: CGFloat{
        width/2.5
    }
    
//    init(width: CGFloat? = 10, imageLength: CGFloat) {
//        self.width = width ?? 20
//    }
    
    var body: some View {
        VStack {
            Image(systemName: "qrcode")
                .resizable()
                .frame(width: imageLength, height: imageLength)
            Text("Failed To Fetch QR Code From Database")
                .padding(.top)
        }.foregroundColor(.gray)
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
