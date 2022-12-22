//
//  sisbenProjekApp.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import SwiftUI
import Firebase




class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct sisbenProjekApp: App {
//    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State private var selectedTab: Tab = .homeViewPage
    
    var body: some Scene {
        WindowGroup {
            LoginPageView()
        }
    }
}
struct mainView: View{
    @State private var selectedTab: Tab = .homeViewPage
    var body: some View{
        ZStack{
            switch(self.selectedTab.page){
            case 1:
                HomePageView()
            case 2:
                ScanPageView()
            case 3:
                StudentListView()
            case 4:
                ProfileView()
            default:
                StudentListView()
            }

            VStack{
                Spacer()
                TabViewCustom(selectedTab: $selectedTab)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

//struct sisbenProjekApp_Previews: PreviewProvider {secure
//    static var previews: some View {
//        sisbenProjekApp()
//            .environmentObject(HomePageView())
//    }
//}
