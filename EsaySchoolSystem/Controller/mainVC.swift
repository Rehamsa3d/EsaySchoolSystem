//
//  ViewController.swift
//  EsaySchoolSystem
//
//  Created by ahmedxiio on 6/3/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit
class mainVC: RootViewController {

    @IBOutlet weak var colletionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupColletionView()
        
    }
    func setupColletionView() {
        colletionView.delegate = self
        colletionView.dataSource = self
    }
    //MARK:- here we setup UIProgrammaticly withform code
    func setupUI() {
        view.backgroundColor = .white
        navBar()
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    func navBar() {
                setupNavigationBar(barTintColor: ColorConstant.red, titleView: nil, title: "MODERN SCHOOL OF EGYPT 2000", shadowImage: true, titleColor: .white, titleFont: UIFont.systemFont(ofSize: 30), large: false)
    }
}


extension mainVC: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sliderCell", for: indexPath) as? SliderCell {
            cell.config()
            return cell
        }
        return UICollectionViewCell()
    }
    

}
