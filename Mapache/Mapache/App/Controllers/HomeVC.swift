//
//  HomeVC.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit
import Antlr4
import SwiftyJSON

class HomeVC: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
    }

    // MARK: - Setup functions
    
    func setupNavBar() {
        let logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        logoView.image = #imageLiteral(resourceName: "logo")
        logoView.contentMode = .scaleAspectFit
        navigationItem.titleView = logoView
    }
    
    // MARK: Tests functions
    
    func fillTests() {
        testName()
    }
    
    func testName(){
        
    }
    
}

extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fileCell", for: indexPath) as! FileCell
        return cell
    }
    
    
}

extension HomeVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "openEditor", sender: self)
    }
    
}

