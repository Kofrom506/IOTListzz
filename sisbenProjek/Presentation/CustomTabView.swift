//
//  CustomTabView.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 13/12/22.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab: Tab = .homeViewPage
    @ViewBuilder
    func fetchView() -> some View {
        return EmptyView()
    }
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                TabViewCustom(selectedTab: $selectedTab)
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}


//
//@main
//struct sisbenProjekApp<Content: View>: App {
//    @State private var selectedTab: Tab = .homeViewPage
//    @ViewBuilder let content: (Int) -> Content
//
//    init() {
//        UITabBar.appearance().isHidden = true
//    }
//    var body: some Scene {
//        WindowGroup {
//
//
//        }
//    }
//}

//struct sisbenProjekApp_Previews: PreviewProvider {
//    static var previews: some View {
//        sisbenProjekApp()
//            .environmentObject(HomePageView())
//    }
//}
