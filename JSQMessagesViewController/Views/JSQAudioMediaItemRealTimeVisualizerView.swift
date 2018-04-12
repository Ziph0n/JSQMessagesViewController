//
//  RealTimeVisualizerView.swift
//  Waving
//
//  Created by Florian on 06/12/2017.
//  Copyright © 2017 Florian Hebrard. All rights reserved.
//

import UIKit
import AVFoundation

extension UIDevice {
    
    class func is4SizediPhone() -> Bool {
        if UIScreen.main.bounds.size.height == 480 {
            return true
        } else {
            return false
        }
    }
    
    class func is5SizediPhone() -> Bool {
        if UIScreen.main.bounds.size.height == 568 {
            return true
        } else {
            return false
        }
    }
    
    class func isNotPlusSizediPhone() -> Bool {
        if UIScreen.main.bounds.size.height == 667 {
            return true
        } else {
            return false
        }
    }
}

@objc public class JSQAudioMediaItemRealTimeVisualizerView: UIView {
    
    @IBOutlet var backgroundBar1: UIView!
    @IBOutlet var backgroundBar2: UIView!
    @IBOutlet var backgroundBar3: UIView!
    @IBOutlet var backgroundBar4: UIView!
    @IBOutlet var backgroundBar5: UIView!
    @IBOutlet var backgroundBar6: UIView!
    @IBOutlet var backgroundBar7: UIView!
    @IBOutlet var backgroundBar8: UIView!
    @IBOutlet var backgroundBar9: UIView!
    @IBOutlet var backgroundBar10: UIView!
    @IBOutlet var backgroundBar11: UIView!
    @IBOutlet var backgroundBar12: UIView!
    @IBOutlet var backgroundBar13: UIView!
    @IBOutlet var backgroundBar14: UIView!
    @IBOutlet var backgroundBar15: UIView!
    @IBOutlet var backgroundBar16: UIView!
    
    @IBOutlet var bar1: UIView!
    @IBOutlet var bar2: UIView!
    @IBOutlet var bar3: UIView!
    @IBOutlet var bar4: UIView!
    @IBOutlet var bar5: UIView!
    @IBOutlet var bar6: UIView!
    @IBOutlet var bar7: UIView!
    @IBOutlet var bar8: UIView!
    @IBOutlet var bar9: UIView!
    @IBOutlet var bar10: UIView!
    @IBOutlet var bar11: UIView!
    @IBOutlet var bar12: UIView!
    @IBOutlet var bar13: UIView!
    @IBOutlet var bar14: UIView!
    @IBOutlet var bar15: UIView!
    @IBOutlet var bar16: UIView!
    
    @IBOutlet var backgroundBar1WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar2WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar3WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar4WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar5WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar6WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar7WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar8WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar9WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar10WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar11WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar12WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar13WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar14WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar15WidthConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar16WidthConstraint: NSLayoutConstraint!

    @IBOutlet var backgroundBar1LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar2LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar3LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar4LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar5LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar6LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar7LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar8LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar9LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar10LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar11LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar12LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar13LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar14LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundBar15LeadingConstraint: NSLayoutConstraint!

    @IBOutlet var bar1HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar2HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar3HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar4HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar5HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar6HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar7HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar8HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar9HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar10HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar11HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar12HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar13HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar14HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar15HeightConstraint: NSLayoutConstraint!
    @IBOutlet var bar16HeightConstraint: NSLayoutConstraint!

    var shouldTransparentizeBackgroundBars = false
    var areBarsConfigured = false
    
    var values: [CGFloat]!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        if !areBarsConfigured {
            areBarsConfigured = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.configureBars()
            }
        }
    }
    
    func configureBars() {
        self.setBackgroundBarsWidth()
        self.setBackgroundBarsLeading()
        self.setBarsBackgroundColor()
        self.setRoundCorners()
    }
    
    func setBackgroundBarsWidth() {
        var multiplier: CGFloat = 28
        if UIDevice.isNotPlusSizediPhone() {
            multiplier = 26 //before
        } else if UIDevice.is5SizediPhone() {
            multiplier = 26
        } else if UIDevice.is4SizediPhone() {
            multiplier = 30
        }
        
        self.backgroundBar1WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar2WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar3WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar4WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar5WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar6WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar7WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar8WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar9WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar10WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar11WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar12WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar13WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar14WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar15WidthConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar16WidthConstraint.constant = self.frame.size.width / multiplier
    }
    
    func setBackgroundBarsLeading() {
        var multiplier: CGFloat = 32
        if UIDevice.isNotPlusSizediPhone() {
            multiplier = 36
        } else if UIDevice.is5SizediPhone() {
            multiplier = 38
        } else if UIDevice.is4SizediPhone() {
            multiplier = 30
        }
        
        self.backgroundBar1LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar2LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar3LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar4LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar5LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar6LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar7LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar8LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar9LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar10LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar11LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar12LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar13LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar14LeadingConstraint.constant = self.frame.size.width / multiplier
        self.backgroundBar15LeadingConstraint.constant = self.frame.size.width / multiplier
    }
    
    func setBarsBackgroundColor() {
        var opacity: CGFloat = 1.0
        if self.shouldTransparentizeBackgroundBars {
            opacity = 0.09
        }
        
        self.backgroundBar1.backgroundColor = UIColor(red: 251/255, green: 246/255, blue: 250/255, alpha: opacity)
        self.backgroundBar2.backgroundColor = UIColor(red: 251/255, green: 247/255, blue: 250/255, alpha: opacity)
        self.backgroundBar3.backgroundColor = UIColor(red: 251/255, green: 247/255, blue: 250/255, alpha: opacity)
        self.backgroundBar4.backgroundColor = UIColor(red: 251/255, green: 248/255, blue: 250/255, alpha: opacity)
        self.backgroundBar5.backgroundColor = UIColor(red: 250/255, green: 248/255, blue: 250/255, alpha: opacity)
        self.backgroundBar6.backgroundColor = UIColor(red: 251/255, green: 248/255, blue: 252/255, alpha: opacity)
        self.backgroundBar7.backgroundColor = UIColor(red: 251/255, green: 248/255, blue: 252/255, alpha: opacity)
        self.backgroundBar8.backgroundColor = UIColor(red: 250/255, green: 248/255, blue: 252/255, alpha: opacity)
        self.backgroundBar9.backgroundColor = UIColor(red: 249/255, green: 248/255, blue: 251/255, alpha: opacity)
        self.backgroundBar10.backgroundColor = UIColor(red: 249/255, green: 248/255, blue: 252/255, alpha: opacity)
        self.backgroundBar11.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 252/255, alpha: opacity)
        self.backgroundBar12.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 253/255, alpha: opacity)
        self.backgroundBar13.backgroundColor = UIColor(red: 248/255, green: 249/255, blue: 253/255, alpha: opacity)
        self.backgroundBar14.backgroundColor = UIColor(red: 248/255, green: 249/255, blue: 253/255, alpha: opacity)
        self.backgroundBar15.backgroundColor = UIColor(red: 247/255, green: 249/255, blue: 253/255, alpha: opacity)
        self.backgroundBar16.backgroundColor = UIColor(red: 247/255, green: 249/255, blue: 253/255, alpha: opacity)
        
        if self.shouldTransparentizeBackgroundBars {
            self.bar1.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar2.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar3.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar4.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar5.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar6.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar7.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar8.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar9.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar10.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar11.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar12.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar13.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar14.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar15.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
            self.bar16.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        } else {
            self.bar1.backgroundColor = UIColor(red: 224/255, green: 85/255, blue: 152/255, alpha: 1.0)
            self.bar2.backgroundColor = UIColor(red: 215/255, green: 89/255, blue: 157/255, alpha: 1.0)
            self.bar3.backgroundColor = UIColor(red: 205/255, green: 92/255, blue: 161/255, alpha: 1.0)
            self.bar4.backgroundColor = UIColor(red: 196/255, green: 96/255, blue: 165/255, alpha: 1.0)
            self.bar5.backgroundColor = UIColor(red: 185/255, green: 99/255, blue: 168/255, alpha: 1.0)
            self.bar6.backgroundColor = UIColor(red: 176/255, green: 103/255, blue: 173/255, alpha: 1.0)
            self.bar7.backgroundColor = UIColor(red: 165/255, green: 106/255, blue: 177/255, alpha: 1.0)
            self.bar8.backgroundColor = UIColor(red: 156/255, green: 110/255, blue: 182/255, alpha: 1.0)
            self.bar9.backgroundColor = UIColor(red: 145/255, green: 113/255, blue: 185/255, alpha: 1.0)
            self.bar10.backgroundColor = UIColor(red: 136/255, green: 117/255, blue: 190/255, alpha: 1.0)
            self.bar11.backgroundColor = UIColor(red: 126/255, green: 120/255, blue: 193/255, alpha: 1.0)
            self.bar12.backgroundColor = UIColor(red: 116/255, green: 124/255, blue: 198/255, alpha: 1.0)
            self.bar13.backgroundColor = UIColor(red: 106/255, green: 127/255, blue: 202/255, alpha: 1.0)
            self.bar14.backgroundColor = UIColor(red: 96/255, green: 130/255, blue: 206/255, alpha: 1.0)
            self.bar15.backgroundColor = UIColor(red: 86/255, green: 134/255, blue: 210/255, alpha: 1.0)
            self.bar16.backgroundColor = UIColor(red: 77/255, green: 138/255, blue: 215/255, alpha: 1.0)
        }
    }
    
    func setRoundCorners() {
        self.backgroundBar1.layer.cornerRadius = self.backgroundBar1WidthConstraint.constant / 2
        self.backgroundBar2.layer.cornerRadius = self.backgroundBar2WidthConstraint.constant / 2
        self.backgroundBar3.layer.cornerRadius = self.backgroundBar3WidthConstraint.constant / 2
        self.backgroundBar4.layer.cornerRadius = self.backgroundBar4WidthConstraint.constant / 2
        self.backgroundBar5.layer.cornerRadius = self.backgroundBar5WidthConstraint.constant / 2
        self.backgroundBar6.layer.cornerRadius = self.backgroundBar6WidthConstraint.constant / 2
        self.backgroundBar7.layer.cornerRadius = self.backgroundBar7WidthConstraint.constant / 2
        self.backgroundBar8.layer.cornerRadius = self.backgroundBar8WidthConstraint.constant / 2
        self.backgroundBar9.layer.cornerRadius = self.backgroundBar9WidthConstraint.constant / 2
        self.backgroundBar10.layer.cornerRadius = self.backgroundBar10WidthConstraint.constant / 2
        self.backgroundBar11.layer.cornerRadius = self.backgroundBar11WidthConstraint.constant / 2
        self.backgroundBar12.layer.cornerRadius = self.backgroundBar12WidthConstraint.constant / 2
        self.backgroundBar13.layer.cornerRadius = self.backgroundBar13WidthConstraint.constant / 2
        self.backgroundBar14.layer.cornerRadius = self.backgroundBar14WidthConstraint.constant / 2
        self.backgroundBar15.layer.cornerRadius = self.backgroundBar15WidthConstraint.constant / 2
        self.backgroundBar16.layer.cornerRadius = self.backgroundBar16WidthConstraint.constant / 2
        
        self.bar1.layer.cornerRadius = self.backgroundBar1WidthConstraint.constant / 2
        self.bar2.layer.cornerRadius = self.backgroundBar2WidthConstraint.constant / 2
        self.bar3.layer.cornerRadius = self.backgroundBar3WidthConstraint.constant / 2
        self.bar4.layer.cornerRadius = self.backgroundBar4WidthConstraint.constant / 2
        self.bar5.layer.cornerRadius = self.backgroundBar5WidthConstraint.constant / 2
        self.bar6.layer.cornerRadius = self.backgroundBar6WidthConstraint.constant / 2
        self.bar7.layer.cornerRadius = self.backgroundBar7WidthConstraint.constant / 2
        self.bar8.layer.cornerRadius = self.backgroundBar8WidthConstraint.constant / 2
        self.bar9.layer.cornerRadius = self.backgroundBar9WidthConstraint.constant / 2
        self.bar10.layer.cornerRadius = self.backgroundBar10WidthConstraint.constant / 2
        self.bar11.layer.cornerRadius = self.backgroundBar11WidthConstraint.constant / 2
        self.bar12.layer.cornerRadius = self.backgroundBar12WidthConstraint.constant / 2
        self.bar13.layer.cornerRadius = self.backgroundBar13WidthConstraint.constant / 2
        self.bar14.layer.cornerRadius = self.backgroundBar14WidthConstraint.constant / 2
        self.bar15.layer.cornerRadius = self.backgroundBar15WidthConstraint.constant / 2
        self.bar16.layer.cornerRadius = self.backgroundBar16WidthConstraint.constant / 2
    }
    
    func animate(currentPlayback: TimeInterval) {
        let index = Int(floor(currentPlayback * 20)) + Int(currentPlayback * 1.4)
        var multiplier: CGFloat
        if index >= values.count {
            multiplier = CGFloat(values.last!)
        } else {
            multiplier = CGFloat(values[index])
        }
        self.setBarHeight(multiplier: multiplier, isReset: false)
    }
    
    func animateRandomly() {
        let randomIndex = Int(arc4random_uniform(UInt32(values.count)))
        self.setBarHeight(multiplier: CGFloat(values[randomIndex]), isReset: true)
    }
    
    func setBarHeight(multiplier: CGFloat, isReset: Bool) {
        self.bar1HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar1.frame.size.height, multiplier: multiplier)
        self.bar2HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar2.frame.size.height, multiplier: multiplier)
        self.bar3HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar3.frame.size.height, multiplier: multiplier)
        self.bar4HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar4.frame.size.height, multiplier: multiplier)
        self.bar5HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar5.frame.size.height, multiplier: multiplier)
        self.bar6HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar6.frame.size.height, multiplier: multiplier)
        self.bar7HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar7.frame.size.height, multiplier: multiplier)
        self.bar8HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar8.frame.size.height, multiplier: multiplier)
        self.bar9HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar9.frame.size.height, multiplier: multiplier)
        self.bar10HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar10.frame.size.height, multiplier: multiplier)
        self.bar11HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar11.frame.size.height, multiplier: multiplier)
        self.bar12HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar12.frame.size.height, multiplier: multiplier)
        self.bar13HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar13.frame.size.height, multiplier: multiplier)
        self.bar14HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar14.frame.size.height, multiplier: multiplier)
        self.bar15HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar15.frame.size.height, multiplier: multiplier)
        self.bar16HeightConstraint.constant = self.getBarHeight(backgroundBarHeight: self.backgroundBar16.frame.size.height, multiplier: multiplier)

        var duration = 0.05
        if isReset {
            duration = 0.1
        }
        UIView.animate(withDuration: duration) {
            self.layoutIfNeeded()
        }
    }
    
    func getBarHeight(backgroundBarHeight: CGFloat, multiplier: CGFloat) -> CGFloat {
        var returnValue = (backgroundBarHeight * multiplier) + 10
        if returnValue > backgroundBarHeight {
            returnValue = backgroundBarHeight
        }
        return returnValue
    }
    
    func resetBars() {
        self.setBarHeight(multiplier: 0.0, isReset: true)
    }
}
