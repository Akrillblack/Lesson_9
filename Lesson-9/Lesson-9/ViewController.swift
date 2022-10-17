//
//  ViewController.swift
//  Lesson-9
//
//  Created by Donatas on 13.10.22.
//

import SnapKit
import UIKit
import simd

class ViewController: UIViewController {
    
    var box = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpSquare()
    }
    
    private func setUpSquare() {
        let sideLength = Int(self.view.frame.width) - 40 // to think about
        self.view.addSubview(self.box)
        self.box.snp.makeConstraints { make in
            make.center.equalTo(self.view)
            make.height.width.equalTo(sideLength)
            //make.leading.trailing.equalTo(a).inset(20)
        }
        
        let redBox = UIView()
        redBox.backgroundColor = .red
        self.box.addSubview(redBox)
        redBox.snp.makeConstraints { make in
            make.width.height.equalTo(sideLength / 2)
            make.top.leading.equalTo(self.box)
        }
        
        let greenBox = UIView()
        greenBox.backgroundColor = .green
        self.box.addSubview(greenBox)
        greenBox.snp.makeConstraints { make in
            make.width.height.equalTo(sideLength / 2)
            make.top.trailing.equalTo(self.box)
        }
        
        let blueBox = UIView()
        blueBox.backgroundColor = .blue
        self.box.addSubview(blueBox)
        blueBox.snp.makeConstraints { make in
            make.width.height.equalTo(sideLength / 2)
            make.bottom.leading.equalTo(self.box)
        }
        
        let purpleBox = UIView()
        purpleBox.backgroundColor = .purple
        self.box.addSubview(purpleBox)
        purpleBox.snp.makeConstraints {make in
            make.width.height.equalTo(sideLength / 2)
            make.bottom.trailing.equalTo(self.box)
        }
        
        
    }
    
}

