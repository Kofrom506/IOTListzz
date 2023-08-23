//
//  TabViewCustom.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 07/12/22.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case homeViewPage
    case encylopediaPage
    case studentListPage
    case profileViewPage
    
    var symbol: String {
        switch self {
        case .homeViewPage:       return "house"
        case .encylopediaPage:        return "leaf"
        case .studentListPage:      return "waveform.path.ecg"
        case .profileViewPage:   return "person.crop.circle"
            
        }
    }
    
    
    var page: Int {
        switch self {
        case .homeViewPage:       return 1
        case .encylopediaPage:        return 2
        case .studentListPage:      return 3
        case .profileViewPage:   return 4
            
        }
    }
}

//struct TabViewCustom: View {
//    @Binding var selectedTab: Tab
//
//    @ViewBuilder
//       func getTabView(type: Tab) -> some View {
//           switch selectedTab {
//           case .homeViewPage:
//               HomePageView()
//           case .scanViewPage:
//               ScanPageView()
//           case .profileViewPage:
//               ProfileView()
//           case .studentListPage:
//               StudentListView()
//           }
//       }
struct TabViewCustom: View {
    @Binding var selectedTab: Tab
    @ViewBuilder
    func getTabView(type: Tab) -> some View {
        switch selectedTab {
        case .homeViewPage:
            HomePageView()
        case .encylopediaPage:
            WeatherAPIView()
        case .profileViewPage:
            ProfileView()
        case .studentListPage:
            StudentListView()
        }
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab  && tab != .studentListPage ? tab.symbol + ".fill" : tab.symbol )
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(tab == selectedTab ? WWColor.purple : .black)
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(WWColor.white_card_bg)
            .cornerRadius(10)
            .padding()
            
        }
    }
}


struct TabViewCustom_Previews: PreviewProvider {
    static var previews: some View {
        TabViewCustom(selectedTab: .constant(.homeViewPage))
    }
}
