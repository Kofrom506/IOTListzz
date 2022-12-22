//
//  RouterFactory.swift
//  wishwell
//
//  Created by Christianto Vinsen on 16/10/22.
//

import Foundation
import SwiftUI

protocol RouterFactory {
    associatedtype Body: View
    associatedtype Screen: ScreenProtocol
    
    @ViewBuilder func makeBody(for screen: Screen) -> Self.Body
}
