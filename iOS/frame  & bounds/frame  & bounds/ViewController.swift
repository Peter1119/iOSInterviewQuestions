//
//  ViewController.swift
//  frame  & bounds
//
//  Created by Sh Hong on 2021/06/05.
//

import UIKit

class ViewController: UIViewController {

    var yelloewView = UIView()
    var greenView = UIView()
    var blackView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red

        yelloewView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blackView.backgroundColor = .black

        yelloewView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        greenView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        blackView.frame = CGRect(x: 200, y: 200, width: 50, height: 50)

        UIViewPropertyAnimator(duration: 3, curve: .easeOut) {
            self.yelloewView.bounds.origin = CGPoint(x: -50, y: -50) //
//            self.greenView.bounds.origin = CGPoint(x: -100, y: -100) //yellowView에 영향을 받음
//            self.view.bounds.origin = CGPoint(x: -80, y: -80)
//            self.yelloewView.frame.size = CGSize(width: 150, height: 250)
//            self.greenView.bounds.size = CGSize(width: 100, height: 200)
        } .startAnimation()
        
        
//        view.addSubview(superView)
//        view.addSubview(subView)
        
        view.addSubview(yelloewView)
        yelloewView.addSubview(greenView)
        view.addSubview(blackView)
        
        print("yelloewView bound의 x, y 좌표 : \(yelloewView.bounds.origin.x), \(yelloewView.bounds.origin.y)")
        print("greenView bound의 x, y 좌표 : \(greenView.bounds.origin.x), \(greenView.bounds.origin.y)")

    }
    
    
    
}

