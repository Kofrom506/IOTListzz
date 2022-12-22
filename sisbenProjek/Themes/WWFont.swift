//
//  WWFont.swift
//  sisbenProjek
//
//  Created by Evan Susanto on 02/12/22.
//

import Foundation
import SwiftUI

public enum WWFontFamily {
    case systemFont
    case poppins
    case leagueSpartan
}

public struct WWFont {
    
    /// Wish Well custom thin font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func thin(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.thin)
        case .poppins:
            return .custom("Poppins-Thin", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Thin", size: size)
        }
    }
    
    /// Wish Well custom light font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func light(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.light)
        case .poppins:
            return .custom("Poppins-Light", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Light", size: size)
        }
    }
    
    /// Wish Well custom regular font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func regular(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.regular)
        case .poppins:
            return .custom("Poppins-Regular", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Regular", size: size)
        }
    }
    
    /// Wish Well custom italic font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func italic(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.regular).italic()
        case .poppins:
            return .custom("Poppins-Italic", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Regular", size: size) // League Spartan not support for Italic
        }
    }
    
    /// Wish Well custom medium font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func medium(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.medium)
        case .poppins:
            return .custom("Poppins-Medium", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Medium", size: size)
        }
    }
    
    /// Wish Well custom semi bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func semiBold(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.semibold)
        case .poppins:
            return .custom("Poppins-SemiBold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-SemiBold", size: size)
        }
    }
    
    /// Wish Well custom bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func bold(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.bold)
        case .poppins:
            return .custom("Poppins-Bold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Bold", size: size)
        }
    }
    
    /// Wish Well custom extra bold font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func extraBold(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.black)
        case .poppins:
            return .custom("Poppins-ExtraBold", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-ExtraBold", size: size)
        }
    }
    
    /// Wish Well custom black font.
    /// - Parameter size: The size of the font. Default value is 14.
    public static func black(fontFamily: WWFontFamily = .poppins, size: CGFloat = 14) -> Font {
        switch fontFamily {
        case .systemFont:
            return .system(size: size).weight(.black)
        case .poppins:
            return .custom("Poppins-Black", size: size)
        case .leagueSpartan:
            return .custom("LeagueSpartan-Black", size: size)
        }
    }
}
