//
//  ViewController.swift
//  Prac1
//
//  Created by apple on 11/3/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import CoreData

class Car {
    var brand: String
    weak var owner : Owner?
    init(brand: String) {
        self.brand = brand
        print("Car of the brand \(brand) allocated")
    }
    deinit {
        print("Car of the brand \(brand) is being deallocated")
    }
}

class Owner {
    var name : String
    weak var car : Car?
    init(name : String) {
        self.name = name
        print("Owner \(name) allocated")
    }
    deinit {
        print("Owner \(name) deallocated")
    }
}

enum Languages: String, CaseIterable {
    case Swift
    case C
    case Java
}













class ViewController: UIViewController {
    var players = ("seshu",12345)
    
    var pesron1 : Person?{
        didSet{
            print("Called after setting the new value")
            if let name = pesron1?.name{
                print("New name is \(name) and old name is \(String(describing: oldValue?.name))")
            }
        }
        willSet(mynewvale){
            print("Called before setting the new value")
            if let newName = mynewvale?.name{
                 print("New name is \(newName)")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //        do {
        //            let tesla = Car(brand: "tesla")
        //            let misterX = Owner(name: "Mister X")
        //            tesla.owner = misterX
        //            misterX.car = tesla
        //        }
        
   //     pesron1 = Person(name:"seshu",age:15)
        
        print(players.0)
        print(players.1)
        
        var int1 = "SESHU"
        var int2 = "KUMAR"
        
        swapTwoValues(&int1, &int2)
        print("someInt is now \(int1), and anotherInt is now \(int2)")
        
    }
    
    
//    func swapTwoValues(_ a : inout Int , _ b : inout Int){
//        let temp = a
//        a = b
//        b = temp
//    }
//
    
    
     
    
    func swapTwoValues<T>(_ a : inout T , _ b : inout T){
                let temp = a
                a = b
                b = temp
            }
   
    
    
    @IBAction func btn_Tap(_ sender: Any) {
        let alert = UIAlertController(title: "Seshu", message: "haii iam seshu", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default) { (uialertac) in
            let stbd = UIStoryboard(name: "Main", bundle: nil)
            let vc = stbd.instantiateViewController(withIdentifier: "SecViewController") as! SecViewController
            self.present(vc, animated: true, completion: nil)
        }
        alert.addAction(ok)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    func SaveData()  {
       
        
        
        
        
        
    }
    
    
    
    
}

