//
//  OnboardingView.swift
//  wishwell
//
//  Created by Dicky Alamsyah on 23/10/22.
//

import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData
    @State private var currentStep = 0
    
    var body: some View {
        ZStack {
            WWColor.purplePastel.ignoresSafeArea(.all)
            VStack {
                GeometryReader { geo in
                    
                    TabView (selection: $currentStep) {
                        ForEach(OnboardingData.list) { it in
                            VStack {
                                ZStack {
                                    Image(it.objectImage)
                                        .resizable()
                                        .scaledToFill()
                                }
                                .frame(width: geo.size.width, height: geo.size.height * 0.6, alignment: .center)
                                .background(
                                    ZStack(alignment: .top) {
                                        WWColor.gradientPurple.ignoresSafeArea(.all)
                                        
                                        Image("leaves_bg")
                                            .resizable()
                                            .scaledToFit()
                                            .blendMode(.softLight)
                                            .ignoresSafeArea(edges: .top)
                                    }
                                )
                                .mask(Ellipse().scale(2).position(x: geo.size.width / 2, y: geo.size.height * 0))
                                .padding(.bottom, ViewPadding.medium)
                                .edgesIgnoringSafeArea(.top)
        
                                VStack (spacing: 0) {
                                    Text(it.primaryText)
                                        .font(WWFont.semiBold(size: 25))
                                        .foregroundColor(WWColor.black)
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, ViewPadding.medium)
                                        .padding(.horizontal, ViewPadding.xmedium)
                                    
                                    Text(it.secondaryText)
                                        .font(WWFont.regular(fontFamily: .leagueSpartan,size: 16))
                                        .foregroundColor(WWColor.black)
                                        .lineSpacing(ViewPadding.small)
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, ViewPadding.medium)
                                        .padding(.horizontal, ViewPadding.xmedium)
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                            }
                            .tag(it)
                            
                        }
                        .ignoresSafeArea()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .onAppear {
                          setupAppearance()
                        }
                    .padding(.bottom, -20)
                    
                }
                .edgesIgnoringSafeArea(.all)
                
                PrimaryButton(title: currentStep < OnboardingData.list.count - 1 ? "Continue" : "Get Started"){
                    if self.currentStep < OnboardingData.list.count - 1 {
                        self.currentStep += 1
                    } else {
                        print("")
                    }
                }
                .padding(.vertical, ViewPadding.small)
                .padding(.horizontal, ViewPadding.xmedium)
                
                Button {
                    self.currentStep = OnboardingData.list.count - 1
                } label: {
                    Text("Skip")
                        .font(WWFont.regular())
                        .foregroundColor(WWColor.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, ViewPadding.small)
                        
                }
                .padding(.horizontal, ViewPadding.xmedium)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(data: OnboardingData.list.first!)
//            .previewDevice("iPhone 14 Pro Max")
//        OnboardingView(data: OnboardingData.list.first!)
//            .previewDevice("iPhone SE (3rd generation)")
    }
}
