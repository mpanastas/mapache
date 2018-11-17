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
        factorialR()
        factorial()
        fiboR()
        fibo()
        bubblesort()
        search()
    }
    
    #warning ("TODO: Change tests")
    
    func factorialR(){
        let code =
        """
        mapache{
        func factorial(a: Int ) -> Int {
            var n:Int;
            var = a;
            if (n == 1) {
            return 1;
            } else {
            return n*factorial(n-1);
            }
        }
        factorial(5);
        factorial(6);
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    
    func factorial(){
        let code =
        """
        mapache{
            fun factorial ( n: int) -> Double{
            var mult:Int;
            mult = n;
            var retVal: Int;
            retVal = 1;
                while (mult > 0) {
                retVal * mult ;
                mult = mult - 1;
                }
            return retVal;
            }
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    func fiboR(){
        let code =
        """
        mapache {
            func fibonacci(n:Int) -> Void {
                if n > 1 {
                fibonacci(n-1);
                }
            print(n);
            }
        fibonacci(5);
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    func fibo(){
        let code =
        """
        mapache{
            func fibo(int n) -> Int {
            if( n <1 || n== 1 ){
            return n;
            }
            var fibo:Int;
            fibo = 1;
            var fiboPrev:Int;
            fiboPrev = 1;
            var cont:Int;
            cont = 2;
                while (cont < n)
                {
                var temp:Int;
                temp = fibo;
                fibo += fiboPrev;
                fiboPrev= temp;
                n=n+1;
                }
            return fibo;
            }
        var res:Int;
        res = fibo(5);
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    
    func bubblesort(){
        let code =
        """
        mapache{
        var a[6]:Int;
        a = [4,3,1,9,0,3];
        var i:Int;
        i = 1;
            while( i != n)
            {
            var j:int;
            j = 0;
                while(j < n)
                {
                    if (a[j] > a[j+1])
                    {
                    var temp:int;
                    temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                    }
                }
            }
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    func search(){
        let code =
        """
        mapache{
            var array[5]:Int;
            var = [1,2,3,4,5]
            var key:Int;
            key = 2;
            var i:Int=0;
                while (i < array.count) {
                    if (item == key) {
                    print("true");
                    }
                i= i+1;
                }
            print("false");
        }
        """
        let file = File("Expresion", code)
        files.append(file)
    }
    
    func testExpr(){
        let code =
        """
        mapache {
            var res:Int;
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
            var res:Int;
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

// MARK: - UICollectionViewDelegateFlowLayout
extension HomeVC: UICollectionViewDelegateFlowLayout {
    
    /// Sets the size of the cell
    ///
    /// - Parameters:
    ///   - collectionView: collectionView asking for the cell size
    ///   - collectionViewLayout: collectionViewLayout of the collectionView
    ///   - indexPath: indexPath asking for the cell size
    /// - Returns: the CGSize of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Compact Regular == iPhone.portrait
        let isCompactRegular = traitCollection.horizontalSizeClass == .compact && traitCollection.verticalSizeClass == .regular
        
        let viewWidth = view.frame.width
        
        // Width is equal to viewWidth/4 on iPhone and to viewWidth/6 for iPad
        let side: CGFloat = isCompactRegular ? (viewWidth)/3 : viewWidth/6
        
        return CGSize(width: side, height: 150)
    }
}
