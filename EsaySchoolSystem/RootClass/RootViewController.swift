//
//  RootViewController.swift
//  EsaySchoolSystem
//
//  Created by ahmedxiio on 6/4/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    func setup() {
        self.prepareAppFont("NotoKufiArabic")
        view.backgroundColor = ColorConstant.yellow
        navigationController?.navigationBar.barTintColor = ColorConstant.blue
        //        UILabel.appearance().font = UIFont(name: "NotoKufiArabic", size: 15)
        //        UITextField.appearance().font = UIFont(name: "NotoKufiArabic", size: 15)
        //        UITextView.appearance().font = UIFont(name: "NotoKufiArabic", size: 15)
        //        UIButton.appearance().titleLabel?.font = UIFont(name: "NotoKufiArabic", size: 15)!
        
        //        for family in UIFont.familyNames {
        //            print("=========>>>>>>>>>>>>>>>>>>>>>>")
        //            print(family)
        //            for font in UIFont.fontNames(forFamilyName: family) {
        //               print(font)
        //           }
        //           print("=========>>>>>>>>>>>>>>>>>>>>>>")
        //       }
    }
    // MARK:- NavigationController Controls
    func setupNavigationBar(barTintColor color: UIColor? = ColorConstant.blue, titleView: UIView?, title: String?, shadowImage: Bool = false, titleColor: UIColor = .white, titleFont: UIFont = UIFont(name: "NotoKufiArabic", size: 20)!, large: Bool = false) {
        if large {
            if #available(iOS 11.0, *) {
                navigationController?.navigationBar.prefersLargeTitles = large
                navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: titleColor, .font: titleFont]
            } else {
                // Fallback on earlier versions
            }
        }
        if shadowImage {
            navigationController?.navigationBar.shadowImage = UIImage()
        }
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: titleColor, .font: titleFont]
        navigationController?.navigationBar.barTintColor = color
        if let titleView = titleView {
            navigationItem.titleView = titleView
        }
        if let title = title {
            navigationItem.title = title
        }
    }
}
