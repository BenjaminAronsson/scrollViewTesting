//
//  ViewController.swift
//  scrollView
//
//  Created by Benjamin on 2019-04-03.
//  Copyright © 2019 se.Benjamin.Aronsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //skapar frame
        let rect2 = CGRect(x: 0, y: 0, width: view.frame.width, height: 90)
        //skapar view
        let bar = UIView(frame: rect2)
        bar.backgroundColor = UIColor.blue
        
        
        //skapar frame
        let rect = CGRect(x: 100, y: 100, width: 100, height: 100)
        //skapar view
        let square = UIView(frame: rect)
        square.backgroundColor = UIColor.purple
        
        let block = UIView(frame: rect)
        block.backgroundColor = UIColor.blue
        square.addSubview(block)
        //add view
        self.view.addSubview(square)
        
        
        //skapa scrollview
        let scrollView = UIScrollView(frame: view.bounds)
        //scrollView.autoresizingMask = UIviewauto
        scrollView.backgroundColor = UIColor.green
        
        var offset : CGFloat = 0
        
        //skapar knapp
        for i in 0...5 {
            let place = CGRect(x: 100, y: 50 + i * 200, width: Int(view.frame.size.width - 200), height: 100)
            let button = UIView(frame: place)
            button.backgroundColor = UIColor.white
            scrollView.addSubview(button)
            offset = place.origin.y + place.size.height * 1.5
        }
        
        //enable scroll
        scrollView.contentSize = CGSize(width: view.bounds.size.width, height: offset)
        
        //add subview
        view.addSubview(scrollView)
        
        //add view
        self.view.addSubview(bar)
        
        
        
        
        
    }


}

