//
//  ViewController.swift
//  Gestures
//
//  Created by Matheus Zanivan on 22/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let minhaView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        minhaView.backgroundColor = .green
        minhaView.center = view.center
        view.addSubview(minhaView)
        
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureFired(_:)))
//        por ser uiTApGestureREcognizer tem que falar o numero de toques que voce quer
        gestureRecognizer.numberOfTapsRequired = 2
        gestureRecognizer.numberOfTouchesRequired = 1
        
        minhaView.addGestureRecognizer(gestureRecognizer)
        minhaView.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }

    @objc func gestureFired(_ gesture: UITapGestureRecognizer){
        print("gesture fired")
    }
}

