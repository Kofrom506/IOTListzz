//
//  OnboardingData.swift

//

import Foundation

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let objectImage: String
    let primaryText: String
    let secondaryText: String

    static let list: [OnboardingData] = [
        OnboardingData(id: 0, objectImage: "onboarding_1", primaryText: "Welcome", secondaryText: "Welcome to our hydroponics plant monitoring app! With this app, you can monitor the health of your plants in real-time using IoT sensors."),
        OnboardingData(id: 1, objectImage: "onboarding_2", primaryText: "Connect IoT device", secondaryText: "Great, you've connected your IoT device! Now, let's add your hydroponics plants to the app. Give your plants names and input relevant details, so you can easily monitor their health."),
        OnboardingData(id: 2, objectImage: "onboarding_3", primaryText: "Add hydroponics plants", secondaryText: "With your IoT device connected and plants added, you're ready to start monitoring their health in real-time. The app uses the sensors to track key indicators like water and nutrient levels, so you can keep your plants in optimal health."),
        OnboardingData(id: 3, objectImage: "onboarding_4", primaryText: "Monitor plant health", secondaryText: "With your IoT device connected and plants added, you're ready to start monitoring their health in real-time. The app uses the sensors to track key indicators like water and nutrient levels, so you can keep your plants in optimal health."),
        OnboardingData(id: 4, objectImage: "onboarding_5", primaryText: "Receive alerts", secondaryText: "The app can also alert you to any changes in your plant's health, so you can take action before it's too late. Set up alerts and customize your preferences, so you never miss a critical update."),
        OnboardingData(id: 5, objectImage: "onboarding_6 ", primaryText: "Get started", secondaryText: "Congratulations, you're now ready to start using our hydroponics plant monitoring app! Take a look at the summary of the app's features and hit the call-to-action button to access the main app screen. Happy plant monitoring!")
    ]
}
