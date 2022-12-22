//
//  ScreenRouter.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 13/12/22.
//

import SwiftUI


enum ScreenRoute: ScreenProtocol {
    case onboarding
    case login
    case register
    case studentList(StudentList)
    case home
    case scan
    case profile(Profile)
    
    enum StudentList{
        case studentListView
        case studentListDetailView
    }
    
    enum Profile{
        case profileView
        case setting(SettingView)
        enum SettingView {
            case editProfileView
            case helpSupportView
            case aboutView
            case languageView
            case faqView
            case notificationView
        }
    }
    
    
    //    enum OnboardingView {
    //        case onboardingView
    //        case welcomeView
    //    }
    //    enum UserView {
    //        case profileView
    //        case monthlyIncomeView
    //        case listBudgetView
    //        case addBudgetView
    //        case recommendationBudgetView(vm: RecommendationBudgetViewModel)
    //        case setting(SettingView)
    //
    //        enum SettingView {
    //            case editProfileView
    //            case helpSupportView
    //            case aboutView
    //            case languageView
    //            case faqView
    //            case notificationView
    //        }
    //    }
    //    enum HomeView {
    //        case homeView
    //    }
    //    enum WishView {
    //        case wishWellView(vm: WishWellViewModel)
    //        case listWishView
    //        case detailWishView(vm: DetailWishViewModel)
    //        case shareWishView(vm: ShareWishViewModel)
    //    }
    //    enum Assessment {
    //        case preAssessmentView(vm: PreAssessmentViewModel)
    //        case mainAssessmentView(vm: MainAssessmentViewModel)
    //        case postAssessmentView(vm: PostAssessmentViewModel)
    //        case resultAssessmentView(vm: ResultAssessmentViewModel)
    //        case resultAssessmentReusableView(vm: ResultAssessmentReusableViewModel)
    //        case guardianDiscoveryView(vm: GuardianDiscoveryViewModel)
    //        case guardianRecommendationView(vm: GuardianRecommendationViewModel)
    //        case guardianDiscoveryReusableView(vm: GuardianDiscoveryReusableViewModel)
    //        case completedAssessmentView(vm: CompletedAssessmentViewModel)
    //    }
    //    enum NotificationView {
    //        case comingSoonNotificationView
    //    }
    
            var embedInNavView: Bool {
                   switch self {
                   case .onboarding:
                       return true
                   case .register:
                       return false
                   case .login:
                       return true
                   case .studentList(_):
                       return true
                   case .home:
                       return true
                   case .scan:
                       return true
                   case .profile(_):
                       return true
                   }
               }
    //    var embedInNavView: Bool {
    //        switch self {
    //        case .mainTapView:
    //            return true
    //        case .onboarding(let view):
    //            switch view {
    //            case .onboardingView:
    //                return true
    //            case .welcomeView:
    //                return false
    //            }
    //        case .user(let view):
    //            switch view {
    //            case .listBudgetView:
    //                return true
    //            case .addBudgetView:
    //                return true
    //            default:
    //                return false
    //            }
    //        case .home(let view):
    //            switch view {
    //            case .homeView:
    //                return true
    //            }
    //        case .wish(let view):
    //            switch view {
    //            case .listWishView:
    //                return true
    //            case .detailWishView:
    //                return true
    //            default:
    //                return false
    //            }
    //        case .assessment(let view):
    //            switch view {
    //            case .preAssessmentView:
    //                return true
    //            default:
    //                return false
    //            }
    //        default:
    //            return false
    //        }
    //    }
    //}
    //
    class ScreenRouterFactory: RouterFactory {
        //
        @ViewBuilder func makeBody(for screen: ScreenRoute) -> some View {
            //
            //        switch screen {
            //        case .mainTapView:
            //            MainTabView()
            //        case .onboarding(let onboardingView):
            //            switch onboardingView {
            //            case .onboardingView:
            //                OnboardingView(data: OnboardingData.list.first!)
            //            case .welcomeView:
            //                WelcomeView()
            //            }
            //        case .user(let userView):
            //            switch userView {
            //            case .profileView:
            //                ProfileView()
            //            case .monthlyIncomeView:
            //                MonthlyIncomeView()
            //            case .listBudgetView:
            //                ListBudgetView()
            //            case .addBudgetView:
            //                AddBudgetView()
            //            case .recommendationBudgetView(let vm):
            //                RecommendationBudgetView(vm: vm)
            //            case .setting(let settingView):
            //                switch settingView {
            //                case .editProfileView:
            //                    EditProfileView()
            //                case .helpSupportView:
            //                    HelpSupportView()
            //                case .aboutView:
            //                    AboutView()
            //                case .languageView:
            //                    LanguangeSettingView()
            //                case .faqView:
            //                    FAQView()
            //                case .notificationView:
            //                    NotificationSettingView()
            //                }
            //            }
            //        case .home(let homeView):
            //            switch homeView {
            //            case .homeView:
            //                HomeView()
            //            }
            //        case .wish(let wishView):
            //            switch wishView {
            //            case .wishWellView(let vm):
            //                WishWellView(vm: vm)
            //            case .listWishView:
            //                ListWishView()
            //            case .detailWishView(let vm):
            //                DetailWishView(vm: vm)
            //            case .shareWishView(let vm):
            //                ShareWishView(vm: vm)
            //            }
            //        case .assessment(let assessmentView):
            //            switch assessmentView {
            //            case .preAssessmentView(let vm):
            //                PreAssessmentView(vm: vm)
            //            case .mainAssessmentView(let vm):
            //                MainAssessmentView(vm: vm)
            //            case .postAssessmentView(let vm):
            //                PostAssessmentView(vm: vm)
            //            case .resultAssessmentView(let vm):
            //                ResultAssessmentView(vm: vm)
            //            case .resultAssessmentReusableView(let vm):
            //                ResultAssessmentReusableView(vm: vm)
            //            case .guardianDiscoveryView(let vm):
            //                GuardianDiscoveryView(vm: vm)
            //            case .guardianRecommendationView(let vm):
            //                GuardianRecommendationView(vm: vm)
            //            case .completedAssessmentView(let vm):
            //                CompletedAssessmentView(vm: vm)
            //            case .guardianDiscoveryReusableView(let vm):
            //                GuardianDiscoveryReusableView(vm: vm)
            //            }
            //        case .notification(let notificationView):
            //            switch notificationView {
            //            case .comingSoonNotificationView:
            //                ComingSoonNotificationView()
            //            }
            //        case .webView(let url):
            //            WebView(url: url)
            //        }
        }
    }
    
    typealias ScreenRouter = Router<ScreenRoute, ScreenRouterFactory>
}
