//
//  RegisterPageView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 11/12/22.
//

import SwiftUI

struct RegisterPageView: View {
    private let id: UUID = UUID()
    @State private var emailAddress: String = ""
    @State private var fullName: String = ""
    @State private var role: Role = .student
    @State private var gender: Gender = .male
    @State private var password: String = ""
    
    init(emailAddress: String, fullName: String, role: Role, gender: Gender, password: String) {
        self.emailAddress = emailAddress
        self.fullName = fullName
        self.role = role
        self.gender = gender
        self.password = password
    }
    
    
    
    //    init(emailAddress: String, fullName: String, password: String, role: Role = .student, gender: Gender) {
    //        self.emailAddress = emailAddress
    //        self.fullName = fullName
    //        self.password = password
    //        self.role = role
    //        self.gender = gender
    //    }
    //    let id = UUID()
    //    let name: String
    //    let email: String
    //    let gender: Gender
    //    let role: Role?
    var body: some View {
        ZStack{
            WWColor.gradientPurple
            GeometryReader {geo in
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: geo.size.height*0.03)
                    Image("logo_only")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, ViewPadding.xxlarge)
                        .frame(height: geo.size.height * 0.27)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        Group{
                            Text("Create Account")
                                .font(WWFont.bold(fontFamily: .leagueSpartan, size: 30))
                            Text("Sign Up to Get Started")
                                .foregroundColor(WWColor.purple)
                                .font(WWFont.medium(fontFamily: .leagueSpartan,size: 15))
                            Spacer()
                                .frame(height: 10)
                            Group{
                                TextFieldWish(title: "Email Address", hintText: "Email Address", value: $emailAddress, imageName: "envelope.fill")
                                TextFieldWish(title: "Full Name", hintText: "Full Name", value: $fullName, imageName: "person.fill")
                                Menu{
                                    Button {
                                        gender = .male
                                    } label: {
                                        Text("Male")
                                    }
                                    Button {
                                        gender = .female
                                    } label: {
                                        Text("Female")
                                    }

                                }label:{
                                    
                                    HStack{
                                        Image(systemName: "person.and.person.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(ViewPadding.medium)
                                        
//                                        TestEnum(rawValue: "Name")
                                        Text(self.gender.rawValue)
                                            .font(WWFont.regular(size: 14))
                                            .foregroundColor(WWColor.grey)
                                            Spacer()
                                    }
//
//
                                    
                                }
                                .frame(height: 44)
                                .frame(maxWidth: .infinity)
                                .background(WWColor.white_card_bg)
                                .cornerRadius(20)
                                
                                Menu{
                                    Button {
                                        role = .student
                                    } label: {
                                        Text("Student")
                                    }
                                    Button {
                                        role = .teacher
                                    } label: {
                                        Text("Teacher")
                                    }

                                }label:{
                                    
                                    HStack{
                                        Image(systemName: "person.crop.square.fill.and.at.rectangle")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(ViewPadding.medium)
                                        
//                                        TestEnum(rawValue: "Name")
                                        Text(self.role.rawValue)
                                            .font(WWFont.regular(size: 14))
                                            .foregroundColor(WWColor.grey)
                                            Spacer()
                                    }
//
//
                                    
                                }
                                .frame(height: 44)
                                .frame(maxWidth: .infinity)
                                .background(WWColor.white_card_bg)
                                .cornerRadius(20)
                                
                                SecureFieldWish(hintText: "Password", imageName: "lock.fill", value: $password)
                            }
                            .foregroundColor(WWColor.purpleSoft)
                        }
                        Spacer()
                        Button {
                            print("Succeed")
                        } label: {
                            NavigationLink {
                                LoginPageView()
                            } label: {
                                
                                Text("Register")
                                    .foregroundColor(.white)
                                    .font(WWFont.medium(fontFamily: .poppins, size: 15))
                                    .frame(maxWidth: .infinity, maxHeight: 40)
                                    .background(WWColor.purpleSoft)
                                    .cornerRadius(25)
                            }
                        }
                        Text("Already have an Account? Login!")
                            .underline()
                            .foregroundColor(WWColor.grey)
                            .font(WWFont.medium(fontFamily: .poppins, size: 12))
                            .frame(maxWidth: .infinity,alignment: .center)
                        Spacer()
                            .frame(height: geo.size.height*0.05)
                        
                        
                    }
                    
                    
                    .ignoresSafeArea()
                  
                    .padding(ViewPadding.large)
                    .background(
                        WWColor.white
                    )
                    
                    .cornerRadius(25)
                    //
                    //                    RoundedRectangle(cornerSize: CGSize(20), style: .continuous)
                    
                }
                
            }
        }.navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        
        
    }
}

struct RegisterPageView_Previews: PreviewProvider {
    static var previews: some View {
        //        RegisterPageView(emailAddress: "", fullName: "", password: "", role: .student, gender: .male)
        RegisterPageView(emailAddress: "", fullName: "", role: .student, gender: .female, password: "")
    }
}
