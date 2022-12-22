//
//  Router.swift
//  wishwell
//
//  Created by Christianto Vinsen on 16/10/22.
//

import Foundation
import SwiftUI

enum PresentationType {
    case push
    case full
    case modal
}

protocol ScreenProtocol {
    var embedInNavView: Bool { get }
}

protocol RouterObject: AnyObject {
    associatedtype Screen = ScreenProtocol
    associatedtype Body = View
    
    func start() -> Body
    func navigateTo(_ screen: Screen)
    func presentSheet(_ screen: Screen)
    func presentFullScreen(_ screen: Screen, isResetStack: Bool)
    func dismissLast()
    func popToRoot()
}

struct RouterContext<ScreenType: ScreenProtocol> {
    let screen: ScreenType
    let presentationType: PresentationType
}

class Router<ScreenType, Factory: RouterFactory>: ObservableObject, RouterObject where Factory.Screen == ScreenType {
    
    @Published private var stack: [RouterContext<ScreenType>] = []
    var factory: Factory
    
    init(rootScreen: ScreenType, presentationType: PresentationType = .push, factory: Factory) {
        self.stack = [RouterContext(screen: rootScreen, presentationType: presentationType)]
        self.factory = factory
    }
    
    @ViewBuilder func start() -> some View {
        let bindingScreens = Binding(get: {
            return self.stack
        }, set: {
            self.stack = $0
        })
        
        Routing(stack: bindingScreens) { screen in
            self.factory.makeBody(for: screen)
        }
    }
}

extension Router {
    func presentSheet(_ screen: ScreenType) {
        self.stack.append(RouterContext(screen: screen, presentationType: .modal))
    }
    
    func dismissLast() {
        self.stack.removeLast()
    }
    
    func navigateTo(_ screen: ScreenType) {
        self.stack.append(RouterContext(screen: screen, presentationType: .push))
    }
    
    func presentFullScreen(_ screen: ScreenType, isResetStack: Bool = false) {
        if isResetStack {
            self.stack = [RouterContext(screen: screen, presentationType: .full)]
        } else {
            self.stack.append(RouterContext(screen: screen, presentationType: .full))
        }
    }
    
    func popToRoot() {
        self.stack.removeLast(self.stack.count - 1)
    }
}
