//
//  ViewController.swift
//  SwiftAndOC
//
//  Created by Mac on 16/4/26.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

import UIKit
//extension NSObject {
//    
//    func dictForViews(views:[UIView]) -> [String : UIView] {
//        var count:UInt32 = 0
//        var dicts:[String : UIView] = [:]
//        
//        let ivars = class_copyIvarList(self.classForCoder, &count)
//        for i in 0..<Int(count){
//            let obj = object_getIvar(self, ivars[i])
//            if let temp = obj as? UIView{
//                views.contains(temp)
//                let name = String.fromCString(ivar_getName(ivars[i]))!
//                dicts[name] = temp
//                if dicts.count == views.count{ break }
//            }
//        }
//        
//        free(ivars)
//        
//        return dicts
//    }
//}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let people = People()
        
        people.eat("🍎")
        
        
        let view0 = UIView()
        view0.backgroundColor = UIColor.yellowColor()
        //解除autolayout
        view0.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view0)
        let views = ["view0":view0]
        let constraintst1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[view0]-0-|", options: .DirectionLeadingToTrailing, metrics: nil, views: views)
        let constraintst2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[view0(==64)]", options: .DirectionLeadingToTrailing, metrics: nil , views: views)
        self.view .addConstraints(constraintst1)
        self.view .addConstraints(constraintst2)
        
        let view1 = UIView()
        view1.backgroundColor = UIColor.blueColor()
        view1.translatesAutoresizingMaskIntoConstraints = false
        self.view .addSubview(view1)
        let viewg = ["view1":view1]
        let constraintst3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|[view1(==64)]-|", options: .DirectionLeadingToTrailing, metrics: nil, views: viewg)
        let constraintst4 = NSLayoutConstraint.constraintsWithVisualFormat("V:[view1(==64)]-20|", options: .DirectionLeadingToTrailing, metrics: nil , views: viewg)
        self.view .addConstraints(constraintst3)
        self.view .addConstraints(constraintst4)
        
//        let view2 = UIView()
//        let viewy = ["view2":view2]
//        let constraintst5 = NSLayoutConstraint.constraintsWithVisualFormat("H:|[view2(==64)]-|", options: .DirectionLeadingToTrailing, metrics: nil, views: viewy)
//        let constraintst6 = NSLayoutConstraint.constraintsWithVisualFormat("V:[view2(==64)]-20|", options: .DirectionLeadingToTrailing, metrics: nil , views: viewy)
//        self.view .addConstraints(constraintst5)
//        self.view .addConstraints(constraintst6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

