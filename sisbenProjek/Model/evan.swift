//
//  OnboardingData.swift
//  wishwell
//
//  Created by Dicky Alamsyah on 23/10/22.
//

import Foundation

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let objectImage: String
    let primaryText: String
    let secondaryText: String

    static let list: [OnboardingData] = [
        OnboardingData(id: 0, objectImage: "onboard_1", primaryText: "L10n.Onboarding1Title", secondaryText: "L10n.Onboarding1SubTitle"),
        OnboardingData(id: 1, objectImage: "onboard_2", primaryText: "L10n.Onboarding2Title", secondaryText: "L10n.Onboarding2SubTitle"),
        OnboardingData(id: 2, objectImage: "onboard_3", primaryText: "L10n.Onboarding3Title", secondaryText: "L10n.Onboarding3SubTitle"),
        OnboardingData(id: 3, objectImage: "onboard_4", primaryText: "L10n.Onboarding4Title", secondaryText: "L10n.Onboarding4SubTitle")
    ]
}
