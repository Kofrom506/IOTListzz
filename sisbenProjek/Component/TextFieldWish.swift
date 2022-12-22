//
//  TextFieldWish.swift
//  wishwell
//
//  Created by Evan Susanto on 30/10/22.
//

import SwiftUI



struct TextFieldWish: View {
    private let title: String
    private let hintText: String
    private let keyboardType: UIKeyboardType
    private let imageName: String
    var value: Binding<String>
    var enterButtonActionHandler: (() -> Void)?
    
    init(
        title: String = "Item Name",
         hintText: String =  "Paste Shopping url",
         keyboardType: UIKeyboardType? = .default,
         value: Binding<String>,
        imageName: String = "person",
         enterButtonActionHandler: (() -> Void)? = nil
    ){
        self.title = title
        self.hintText = hintText
        self.keyboardType = keyboardType ?? .default
        self.imageName = imageName
        self.value = value
        
        self.enterButtonActionHandler = enterButtonActionHandler
    }
    
    var body: some View {
       
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .padding(ViewPadding.medium)
                
                Spacer()
                
                TextField(hintText, text: value)
                    .font(WWFont.regular(size: 14))
                    .foregroundColor(WWColor.grey)
                    .keyboardType(keyboardType)
                Spacer()
                
            }
            .frame(height: 44)
            
            .frame(maxWidth: .infinity)
            .background(WWColor.white_card_bg)
            .cornerRadius(20)
        
    }
}

struct TextFieldWish_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWish(value: .constant("10"))
    }
}
