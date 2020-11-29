//
//  Theme.swift
//  MyBanking
//
//  Created by Anki on 26/11/20.
//

import Foundation
import UIKit

extension UIView{
    func setDefaultGradient(){
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        self.backgroundColor = .clear
        gradient.colors = [UIColor.gray.cgColor, UIColor.white.cgColor]
        self.layer.insertSublayer(gradient, at: 0)
    }
    func setBlackGradient(){
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        self.backgroundColor = .clear
        gradient.colors = [UIColor.black.cgColor, UIColor.purple.cgColor]
        self.layer.insertSublayer(gradient, at: 0)
    }
    func setUpNavBar(){
        
        let appearence = UINavigationBar.appearance()
        appearence.backItem?.title = ""
        appearence.setBackgroundImage(UIImage(), for: .default)
        appearence.shadowImage = UIImage()
        appearence.isTranslucent = true
        appearence.backgroundColor = .clear
        appearence.tintColor = .white
        appearence.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
       
    }
}
