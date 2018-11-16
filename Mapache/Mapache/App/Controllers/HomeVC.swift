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
    
    
    // MARK: - Variables
    
    var files: [File] = []
    
    var selectedFile: File?
    
    // MARK: Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        
        fillTests()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openEditor" {
            let editorVC = segue.destination as! EditorVC
            editorVC.file = selectedFile
            selectedFile = nil
        }
    }
    
    
    
    // MARK: - Setup functions
    
    func setupNavBar() {
        title = "Home"
    }
    
    // MARK: Tests functions
    
    func fillTests() {
        testExpr()
        testTypes()
        testExpr3()
    }
    
    #warning ("TODO: Change tests")
    
    func testExpr(){
        let code =
        """
        mapache {
            var res: int;
            res = 5 * (6-1) + 3;
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    func testTypes(){
        let code =
        """
        mapache {
            var intEx: int;
            var floatEx: float;
            var boolEx: bool;
            var charEx: char;

            intEx = 1;
            floatEx = 3.1416;
            boolEx = true;
            charEx = 'w';

            floatEx = 3.1416;
            floatEx = 5.26;

        }
        """
        let file = File("Types", code)
        files.append(file)
    }
    func testExpr3(){
        let code =
        """
        mapache {
            var res: int;
            res = 5 * (6-1) + 3;
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
}

extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return files.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0  {
            return collectionView.dequeueReusableCell(withReuseIdentifier: "createFileCell", for: indexPath)
        }
        
        let file = files[indexPath.row - 1]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fileCell", for: indexPath) as! FileCell
        cell.setupCell(with: file)
        return cell
    }
    
    
}

extension HomeVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row > 0  {
            selectedFile = files[indexPath.row - 1]
        }
    
        performSegue(withIdentifier: "openEditor", sender: self)
    }
    
}

