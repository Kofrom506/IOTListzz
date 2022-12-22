//
//  ProfileView.swift
//  wishwell
//
//  Created by Christianto Vinsen on 09/10/22.
//

import SwiftUI

var mockProfile: ProfileItem = ProfileItem(image: "person.fill", title: "Student Profile", subTitle: "Edit Profile", bgColor: WWColor.purplePastel, fgColor: WWColor.purpleSoft)
var mockProfile1: ProfileItem = ProfileItem(image: "questionmark.app.fill", title: "Help & Support", subTitle: "FAQ, Privacy, Report Bugs, etc", bgColor: WWColor.orangeSoft, fgColor: WWColor.orange)
var mockProfile2: ProfileItem = ProfileItem(image: "info.circle.fill", title: "About", subTitle: "Get To Know Behind The App", bgColor: WWColor.bluePastel, fgColor: WWColor.blue)

struct ProfileStatus: Hashable, Identifiable {
    let id: UUID
    let statusNumber: String
    let statusTitle: String
    let statusImage: String
    let statusColor: Color
    let statusBGColor: Color
}

struct ProfileView: View {
    var Profiles: [ProfileItem] = [mockProfile, mockProfile1, mockProfile2]
    var body: some View {
        
        GeometryReader { geo in
            ZStack (alignment: .top) {
                WWColor.gradientRedBG.ignoresSafeArea(.all)
                Image("leaves_bg")
                    .resizable()
                    .scaledToFit()
                    .blendMode(.softLight)
                    .opacity(2)
                    .ignoresSafeArea(edges: .top)
                
                VStack {
                    Text("Profile")
                        .font(WWFont.semiBold(size: 22))
                        .foregroundColor(WWColor.white)
                        .padding(.bottom)
                    VStack (spacing: ViewPadding.mini) {
                        HStack (spacing: ViewPadding.medium) {
                            Image("student")
                                .resizable()
                                .padding(ViewPadding.small)
                                .background(WWColor.white)
                                .frame(width: 52, height: 52)
                                .clipShape(Circle())
                                .shadow(color:WWColor.black.opacity(0.2), radius: 5, x: 0, y:3)
                            
                            VStack (alignment: .leading) {
                                Text("Evan Susanto")
                                    .font(WWFont.semiBold(size: 16))
                                    .foregroundColor(WWColor.black)
                                    .lineLimit(1)
                                
                                Button {
                                    
                                } label: {
                                    Text("Mahasiswa")
                                        .font(WWFont.regular(size: 12))
                                        .foregroundColor(WWColor.black)
                                    Image(systemName: "chevron.right")
                                        .font(.caption)
                                        .foregroundColor(WWColor.black)
                                }
                                
                            }
                            Spacer()
                            
                        }
                        .padding(.vertical, ViewPadding.small)
                        .padding(.horizontal, ViewPadding.xmedium)
                
                        HStack (spacing: 0) {
                            VStack (spacing: 5) {
                                Text("10")
                                    .font(WWFont.medium(size: 32))
                                    .foregroundColor(WWColor.white)
                                HStack (alignment: .center, spacing: 5) {
                                    Image("ic_add_wishlist")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .scaleEffect(1)
                                        .frame(width: 14, height: 14)
                                        .background(WWColor.greenSoft)
                                        .clipShape(Circle())
                                    Text("On Time")
                                        .font(WWFont.regular(fontFamily: .leagueSpartan, size: 12))
                                        .foregroundColor(WWColor.white)
                                }
                            }
                            
                            Group {
                                Spacer()
                                Divider()
                                    .padding(.horizontal, 0.25)
                                    .background(WWColor.white)
                                    .padding(.vertical, 10)
                                Spacer()
                            }
                            

                            VStack (spacing: 5) {
                                Text("0")
                                    .font(WWFont.medium(size: 32))
                                    .foregroundColor(WWColor.white)
                                HStack (alignment: .center, spacing: 5) {
                                    Image("ic_shopbag")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(WWColor.orange)
                                        .scaleEffect(0.6)
                                        .frame(width: 14, height: 14)
                                        .background(WWColor.orangePastel)
                                        .clipShape(Circle())
                                    Text("Late")
                                        .font(WWFont.regular(fontFamily: .leagueSpartan, size: 12))
                                        .foregroundColor(WWColor.white)
                                }
                            }

                            Group {
                                Spacer()
                                Divider()
                                    .padding(.horizontal, 0.25)
                                    .background(WWColor.white)
                                    .padding(.vertical, 10)
                                Spacer()
                            }

                            VStack (spacing: 5) {
                                Text("0")
                                    .font(WWFont.medium(size: 32))
                                    .foregroundColor(WWColor.white)
                                HStack (alignment: .center, spacing: 5) {
                                    Image("ic_shopbag")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(WWColor.green)
                                        .scaleEffect(0.6)
                                        .frame(width: 14, height: 14)
                                        .background(WWColor.yellow)
                                        .clipShape(Circle())
                                    Text("Overlate")
                                        .font(WWFont.regular(fontFamily: .leagueSpartan, size: 12))
                                        .foregroundColor(WWColor.white)
                                }
                            }
                                                        
                            Group {
                                Spacer()
                                Divider()
                                    .padding(.horizontal, 0.25)
                                    .background(WWColor.white)
                                    .padding(.vertical, 10)
                                Spacer()
                            }
                            
                            VStack (spacing: 5) {
                                Text("10")
                                    .font(WWFont.medium(size: 32))
                                    .foregroundColor(WWColor.white)
                                HStack (alignment: .center, spacing: 5) {
                                    Image("ic_shopbag")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(WWColor.pink)
                                        .scaleEffect(0.6)
                                        .frame(width: 14, height: 14)
                                        .background(WWColor.gradientRedBG)
                                        .clipShape(Circle())
                                    Text("Absent")
                                        .font(WWFont.regular(fontFamily: .leagueSpartan, size: 12))
                                        .foregroundColor(WWColor.white)
                                }
                            }
                                                        
                        }
                            .padding(.horizontal, ViewPadding.medium)
                            .frame(height: geo.size.height*0.11)
                            .frame(maxWidth: .infinity)
                            .background(WWColor.gradientCard
                                .cornerRadius(10))
                            .padding(.vertical, ViewPadding.small)
                            .padding(.horizontal, ViewPadding.xmedium)

                        
                        ScrollView (.vertical, showsIndicators: false) {
                            LazyVStack (spacing: 10) {
                                ForEach(Profiles) { item in
                                    ProfileCardView(profileItems: item)
                                        .padding(.horizontal, ViewPadding.xmedium)
                                        .onTapGesture {
//                                            screenRouter.navigateTo(item.screenRoute)
                                        }
                                }
                            }
                        }
                        .padding(.vertical, ViewPadding.small)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.vertical, ViewPadding.xmedium)
                    .background(WWColor.white_card_bg)
                    .edgesIgnoringSafeArea(.bottom)
                    
                }
            }
        }
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 13")
        ProfileView()
            .previewDevice("iPhone SE (3rd generation")
    }
}
