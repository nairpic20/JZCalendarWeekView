//
//  JZWeekViewColors.swift
//  JZCalendarWeekView
//
//  Created by Jeff Zhang on 29/3/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import Foundation


/// cannot change for now, will implement theme in the future
class JZWeekViewColors {

    //make the green
    class var today: UIColor { return UIColor(hex: 0xffa400) }
    
    
    class var secondaryLabel: UIColor {
        if #available(iOS 13, *) {
            return UIColor.secondaryLabel
        } else {
            return UIColor(hex: 0x757575)
        }
    }
    class var tertiaryLabel: UIColor {
        if #available(iOS 13, *) {
            return UIColor.tertiaryLabel
        } else {
            return UIColor(hex: 0x999999)
        }
    }
    class var separator: UIColor {
        if #available(iOS 13, *) {
            return UIColor.separator
        } else {
            return UIColor.lightGray
        }
    }
    class var background: UIColor {
        if #available(iOS 13, *) {
            return UIColor.systemBackground
        } else {
            return UIColor.white
        }
    }
    
    class var yellowIsh: UIColor {
        if #available(iOS 13, *) {
            if UITraitCollection.current.userInterfaceStyle == .dark {
                return UIColor(hex: 0xffa400)//return UIColor(hex: 0x00FF00)
            } else {
                return UIColor(hex: 0xffa400)
            }
        } else {
            return UIColor(hex: 0xffa400)
        }
    }
    
    class var blue: UIColor { return UIColor.systemBlue }
    class var red: UIColor { return UIColor.systemRed }
  
}

extension UIColor {

    fileprivate convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    // Get UIColor by hex
    fileprivate convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}
