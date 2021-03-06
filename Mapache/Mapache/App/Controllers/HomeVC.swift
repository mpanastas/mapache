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
    
    
    // MARK: - Constants
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    
    
    // MARK: - Variables
    
    var files: [File] = []
    var filterFiles = [File]()
    
    var selectedFile: File?
    var selectedIndex: Int?
    
    var customFilesCode: [String] = []
    var customFilesTitle: [String] = []
    
    var searchBarIsEmpty : Bool {
        get {
            return searchController.searchBar.text?.isEmpty ?? true
        }
    }
    
    var searching : Bool {
        get {
            return searchController.isActive && !searchBarIsEmpty
        }
    }
    
    
    
    // MARK: Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        
        setupSearch()
        
        loadFiles()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openEditor" {
            let editorVC = segue.destination as! EditorVC
            editorVC.delegate = self
            editorVC.file = selectedFile
            editorVC.fileIndex = selectedIndex
            selectedFile = nil
            selectedIndex = nil
        }
    }
    
    // MARK: - Setup functions
    
    func setupNavBar() {
        title = "Home"
    }
    
    func loadFiles() {
        files.removeAll()
        loadCustomFiles()
        loadSuccessTests()
        loadCompileErrorTests()
        
        collectionView.reloadData()
    }
    
    func loadCustomFiles() {
        let defaults = UserDefaults.standard
        let emptyArr: [String] = []
        customFilesCode = defaults.stringArray(forKey: "customFilesCode") ?? emptyArr
        customFilesTitle = defaults.stringArray(forKey: "customFilesTitle") ?? emptyArr
        
        for i in 0..<customFilesCode.count {
            let code = customFilesCode[i]
            let title = customFilesTitle[i]
            let file = File(title, code, .new)
            files.append(file)
        }
    }
    
    // MARK: - Search functions
    func setupSearch() {
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Type here to search..."
        searchController.searchBar.barStyle = .blackTranslucent
        
        navigationItem.searchController = searchController
        
        searchController.searchBar.delegate = self
        searchController.definesPresentationContext = true
    }
    
    func filterFiles(with searchText: String){
        filterFiles = files.filter({ (file) -> Bool in
            return file.title.lowercased().contains(searchText.lowercased())
        })
        collectionView.reloadData()
    }
    
}

// MARK: - EditorDelegate
extension HomeVC: EditorDelegate {
    func saveFile(_ newFile: File) {
        customFilesCode.insert(newFile.code, at: 0)
        customFilesTitle.insert(newFile.title, at: 0)
        let defaults = UserDefaults.standard
        defaults.set(customFilesCode, forKey: "customFilesCode")
        defaults.set(customFilesTitle, forKey: "customFilesTitle")
        
        loadFiles()
    }
    
    func updateFile(_ file: File, at index: Int) {
        customFilesCode[index] = file.code
        customFilesTitle[index] = file.title
        let defaults = UserDefaults.standard
        defaults.set(customFilesCode, forKey: "customFilesCode")
        defaults.set(customFilesTitle, forKey: "customFilesTitle")
        
        loadFiles()
    }
}

// MARK: - UISearchResultsUpdating Delegate
extension HomeVC: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterFiles(with: searchController.searchBar.text!)
        
    }
}

// MARK: - UISearchBarDelegate
extension HomeVC: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
       
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("textDidChange")
        //searching = searchBar.text != ""
        //tableView.reloadData()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchController.searchBar.text = nil
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchController.searchBar.text = nil
        searchBar.resignFirstResponder()
    }
}

extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching {
            return filterFiles.count
        }
        return files.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if searching {
            let file = filterFiles[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fileCell", for: indexPath) as! FileCell
            cell.setupCell(with: file)
            return cell
        }
        
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
        if searching {
            
                selectedIndex = indexPath.row
                selectedFile = filterFiles[selectedIndex!]
            
            performSegue(withIdentifier: "openEditor", sender: self)
        } else {
            if indexPath.row > 0  {
                selectedIndex = indexPath.row-1
                selectedFile = files[selectedIndex!]
            }
            performSegue(withIdentifier: "openEditor", sender: self)
        }
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


// MARK: - Tests
extension HomeVC {
    
    func loadSuccessTests() {
        testExpr()
        testTypes()
        factorialR()
        factorial()
        fiboR()
        fibo()
        bubblesort()
        search()
        order()
        logicOp()
    }
    
    func loadCompileErrorTests() {
        wOrder()
        VoidReturn()
        assignE()
        funcE()
        returnE()
        varE()
        declarFunE()
        funcExists()
        paramE()
        retE()
        indexE()
        idError()
    }
    
    func factorialR(){
        let code =
        """
        mapache{
            func factorial(a: Int ) -> Int {
                var n:Int;
                n = a;
                var ans:Int;
                ans = 0;

                if (n == 1) {
                    ans = 1;
                } else {
                    ans = n*factorial(n-1);
                }
                return ans;
            }
            print(factorial(5));
        }
        """
        let file = File("Factorial Recursive", code, .success)
        files.append(file)
    }
    
    
    func factorial(){
        let code =
        """
        mapache{
            func factorial (n: Int) -> Int {
                var mult:Int;
                mult = n;
                var retVal: Int;
                retVal = 1;

                while (mult > 0) {
                    retVal = retVal * mult ;
                    mult = mult - 1;
                }
                return retVal;
            }

            print(factorial(5));
        }
        """
        let file = File("Factorial Iterative", code, .success)
        files.append(file)
    }
    
    func fiboR(){
        let code =
        """
        mapache{
            func fibonacciR(n: Int) -> Int {
                var ans:Int;
                if (n == 0) {
                    ans= 0;
                } else{
                    if (n == 1) {
                        ans= 1;
                    } else {
                        ans =  fibonacciR(n-1) + fibonacciR(n-2);
                    }
                }
                return ans;
            }

            print(fibonacciR(5));
        }
        """
        let file = File("Fibonacci Recursive", code, .success)
        files.append(file)
    }
    
    
    func VoidReturn(){
        let code =
        """
        mapache {
            func fibonacci(n:Int) -> Void {
                if (n > 1) {
                    var ans:Int;
                    ans = fibonacci(n-1) - fibonacci(n-2);
                    print(ans);
                }
            }
        
            fibonacci(5);
        }
        """
        let file = File("Void Return", code, .error)
        files.append(file)
    }
    
    func fibo(){
        let code =
        """
        mapache {
            func fibo(n: Int) -> Int {
                var ans: Int;
                if (n<1 || n==1) {
                    ans = n;
                } else {
                    var fibo: Int;
                    fibo = 1;
                    var fiboPrev: Int;
                    fiboPrev = 1;
                    var cont: Int;
                    cont = 2;
                
                    while (cont < n) {
                        var temp: Int;
                        temp = fibo;
                        fibo = fibo + fiboPrev;
                        fiboPrev = temp;
                        cont = cont+1;
                    }
                    ans = fibo;
                }

                return ans;
            }

            print(fibo(5));
        }
        """
        let file = File("Fibonacci Iterative", code, .success)
        files.append(file)
    }
    
    
    func bubblesort(){
        let code =
        """
        mapache{
            var a[6]:Int;
            a[0] = 4;
            a[1] = 3;
            a[2] = 1;
            a[3] = 9;
            a[4] = 0;
            a[5] = 3;
        
            var tam:Int;
            tam = 6;

            func sort() -> Void {
                var i:Int;
                i = 1;
                while( i < tam) {
                    var j:int;
                    j = 0;
                    while(j < tam - 1) {
                        if (a[j] > a[j+1]) {
                            var temp:int;
                            temp = a[j];
                            a[j] = a[j+1];
                            a[j+1] = temp;
                        }
                        j = j+1;
                    }
                    i = i+1;
                }
            }

            func printArray() -> Void {
                var cont:Int;
                cont = 0;
                while(cont < tam) {
                    print(a[cont]);
                    cont = cont + 1;
                }
            }
        
            print("Arreglo Original:");
            printArray();
            sort();
            print("Arreglo Ordenado:");
            printArray();
        }
        """
        let file = File("Sort", code, .success)
        files.append(file)
    }
    
    func search(){
        let code =
        """
        mapache{
            var a[6]:Int;
            a[0] = 1;
            a[1] = 2;
            a[2] = 3;
            a[3] = 9;
            a[4] = 4;
            a[5] = 3;
            
            var tam:Int;
            tam = 6;

            var i:Int;
            i = 0;

            func search(key:Int) -> Bool {
                var found:Bool;
                found = false;
                while (i < tam) {
                    if (a[i] == key) {
                        found = true;
                    }
                    i= i+1;
                }
                return found;
            }
            print(search(2));
        }
        """
        let file = File("Search", code, .success)
        files.append(file)
    }
    
    func testExpr(){
        let code =
        """
        mapache {
            var res:Int;
            res = 5 * (6-1) + 3;
            res = 2 * 3 * 4;
            print(res);
        }
        """
        let file = File("Expresion", code, .success)
        files.append(file)
    }
    
    func testFuncs(){
        let code =
        """
        mapache {
            func sum(a:Int, b:Int) -> Int {
            var ans:Int;
            ans = a+b;
            return ans;
            }

        var a:Int;
        a = sum(2,3);

            func sub(a:Int, b:Int) -> Int {
            var ans:Int;
            ans = a-b;
            return ans;
            }

        var b:Int;
        b = sub(2,3);
        }

        """
        let file = File("testFuncs", code, .success)
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

            print(intEx);
            print(floatEx);
            print(boolEx);
            print(charEx);
            print("Letrero");
        }
        """
        let file = File("Types", code, .success)
        files.append(file)
    }
    
    func wOrder(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                return a+b;
            }

            var ans:Int;
            ans = sum(1,2);
            print(ans);
            print(sub(1,2));

            func sub(a:Int, b:Int)->Int{
                return b-a;
            }
        }
        """
        let file = File("Wrong Order", code, .error)
        files.append(file)
    }
    
    func order(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                return a+b;
            }

            var ans:Int;
            ans = sum(1,2);
            print(ans);

            func sub(a:Int, b:Int)->Int{
                return a-b;
            }
            print(sub(1,2));
        }
        """
        let file = File("Order", code, .success)
        files.append(file)
    }
    
    func logicOp(){
        let code =
        """
        mapache{
            var a:Bool;
            a = true;
            var b:Bool;
            b = false;
        
            if(a && b){
                print("true");
            }else{
             print("false");
            }

            if(a || b){
                print("true");
            }else{
             print("false");
            }
            
            if(a && a){
                print("true");
            }else{
             print("false");
            }

            if(b || b){
                print("false");
            }else{
             print("true");
            }
        }
        """
        let file = File("Logic Operands", code, .success)
        files.append(file)
    }
    
    func assignE(){
        let code =
        """
        mapache{
            var x:Int;
            var y: bool;

            x = 4;
            y = x;
        }
        """
        let file = File("Assign Error", code, .error)
        files.append(file)
    }
    
    func funcE(){
        let code =
        """
        mapache{
            var ans:Int;

            ans = suma();
            imprimit();
        }
        """
        let file = File("Function Error", code, .error)
        files.append(file)
    }
    
    func returnE(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                return a+b;
            }
            sum();
        }
        """
        let file = File("Return Error", code, .error)
        files.append(file)
    }
    
    func varE(){
        let code =
        """
        mapache{
            var x:Int;
            var x:Int;
        }
        """
        let file = File("Variable Error", code, .error)
        files.append(file)
    }
    
    func declarFunE(){
        let code =
        """
        mapache{
            func suma(a:Int , b:Int) -> Int {
                func resta(a:Int, b:Int) -> Int{
                    return a-b;
                }
                return a+b;
            }
            a = suma(2, 4);
            print(a);
        }
        """
        let file = File("Declar Func Error", code, .error)
        files.append(file)
    }
    
    func funcExists(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                return a+b;
            }
            func suma(a:Int, b:Int, c:Int) -> Float{
                return a+b+c;
            }
            print(suma(1,2);
        }
        """
        let file = File("Func Repeat", code, .error)
        files.append(file)
    }
    func paramE(){
        let code =
        """
        mapache{
            func sum(a:Int, a:Int) -> Int{
                return a+a;
            }
            print(sum(3,4));
        }
        """
        let file = File("Param Exists", code, .error)
        files.append(file)
    }
    func retE(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                a+b;
            }
            var ans:Int;
            ans = sum(3,4);
        }
        """
        let file = File("Missing Return", code, .error)
        files.append(file)
    }
    func retTypeE(){
        let code =
        """
        mapache{
            func sum(a:Int, b:Int) -> Int{
                var x:Bool;
                x = true;

                return x;
            }
            var ans:Int;
            ans = sum(3,4);
        }
        """
        let file = File("Type Return", code, .error)
        files.append(file)
    }
    func indexE(){
        let code =
        """
        mapache{
            var array[5]:Int;
            var index:Float;
            index = 4.5;

            array[index] = 0;
        }
        """
        let file = File("Index Error", code, .error)
        files.append(file)
    }
    func idError(){
        let code =
        """
        mapache{
            x = 1 + 2;
        }
        """
        let file = File("Variable Id Error", code, .error)
        files.append(file)
    }
    
}
