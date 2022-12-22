//
//  ScanPageView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI



struct ScanPageView: View {
    @State private var text =
"""
    
"""
    
    var body: some View {
        GeometryReader{geo in
            VStack {
                VStack{
                    Spacer()
                        .frame(height: geo.size.height*0.07)
                    Text("My QR Code")
                        .foregroundColor(WWColor.white)
                        .font(WWFont.bold(fontFamily: .poppins, size: 20))
                    Spacer()
                        .frame(height: geo.size.height*0.05)
                    Image(systemName: "person")
                        .background(
                            Circle()
                                .padding(.all, -20)
                                .foregroundColor(WWColor.bluePastel)
                        )
                        .padding(.bottom,20)
                    Text("Evan Susanto")
                        .foregroundColor(WWColor.white)
                        .font(WWFont.medium(fontFamily: .poppins, size: 17))
                        .frame(maxWidth: .infinity,alignment: .center)
                    Text("Mahasiswa")
//                        .foregroundColor(WWColor.grey)
                        .foregroundColor(WWColor.white)
                        .font(WWFont.medium(fontFamily: .poppins, size: 12))
                        .frame(maxWidth: .infinity,alignment: .center)
                    Spacer()
                        .frame(height: geo.size.height*0.02)
                }.background(WWColor.gradientPurple)
                VStack{
                   
                    Spacer()
                        .frame(height: 30)
                    
                    TextField("Enter code", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Image(uiImage: UIImage(data: getQRCodeDate(text: text)!)!)
                        .resizable()
                        .frame(width: geo.size.width*0.8, height: geo.size.width*0.8)
                    Spacer()
                       
                }
                .cornerRadius(30)
                .background(.white)
                   
                    
            } .ignoresSafeArea()
        }
    }
    
    func getQRCodeDate(text: String) -> Data? {
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        let data = text.data(using: .ascii, allowLossyConversion: false)
        filter.setValue(data, forKey: "inputMessage")
        guard let ciimage = filter.outputImage else { return nil }
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledCIImage = ciimage.transformed(by: transform)
        let uiimage = UIImage(ciImage: scaledCIImage)
        return uiimage.pngData()!
    }
}

struct ScanPageView_Previews: PreviewProvider {
    static var previews: some View {
        ScanPageView()
    }
}
