//
//  LoginPageView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI

struct LoginPageView: View {
    @State var text: String = "Evan"
    @State var emailText: String = ""
    @State var passwordText: String = ""
    var body: some View {
        NavigationView {
            ZStack{
                WWColor.white
                GeometryReader{ geo in
                    VStack(alignment: .center){
                        Group {
                            Spacer()
                                .frame(height: 50)
                            Image("logo_only")
                                .resizable()
                                .scaledToFit()
                                .padding(.all, ViewPadding.medium)
                                .frame(width: geo.size.height * 0.3)
                            Text("Welcome To Listzzz!")
                                .foregroundColor(.black)
                                .font(WWFont.medium(fontFamily: .poppins, size: 25))
                                .frame(maxWidth: .infinity,alignment: .center)
                            Text("Score Your Attendance Here!")
                                .foregroundColor(WWColor.grey)
                                .font(WWFont.medium(fontFamily: .poppins, size: 12))
                                .frame(maxWidth: .infinity,alignment: .center)
                            
                        }
                        
                        Group{
                            Spacer()
                                .frame(height: 20)
                            TextFieldWish(title: "Email", hintText: "Email", keyboardType: .emailAddress, value: $emailText, imageName: "envelope.fill")
                                .foregroundColor(WWColor.purpleSoft)
                            Spacer()
                                .frame(height: 20)
                            SecureFieldWish(hintText: "Password", imageName: "lock.fill", value: $passwordText)
                                .foregroundColor(WWColor.purpleSoft)
                            Spacer()
                                .frame(height: 40)
                            NavigationLink(destination: mainView()) {
                                    Text("Login")
                                        .foregroundColor(.white)
                                        .font(WWFont.medium(fontFamily: .poppins, size: 15))
                                        .frame(maxWidth: .infinity, maxHeight: 40)
                                        .background(WWColor.purpleSoft)
                                        .cornerRadius(25)
                                
                            }
                        }
                        Spacer()
                            .frame(height: 10)
                        Text("Forgot Password?")
                            .foregroundColor(WWColor.purple)
                            .font(WWFont.medium(fontFamily: .poppins, size: 12))
                            .frame(maxWidth: .infinity,alignment: .center)
                        Spacer()
                        NavigationLink {
                            RegisterPageView(emailAddress: "", fullName: "", role: .student, gender: .male, password: "")
                        } label: {
                            Text("Don't have an Account? Register!")
                                .underline()
                                .foregroundColor(WWColor.grey)
                                .font(WWFont.medium(fontFamily: .poppins, size: 12))
                                .frame(maxWidth: .infinity,alignment: .center)
                        }
                        Spacer()
                            .frame(height: 50)
                        
                        
                    }.padding(.horizontal, ViewPadding.xlarge)
                    
                }
                
                
                
            }.ignoresSafeArea()
        }.navigationBarBackButtonHidden(true)
    }
}


struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
