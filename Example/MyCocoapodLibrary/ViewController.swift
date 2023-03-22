//
//  ViewController.swift
//  MyCocoapodLibrary
//
//  Created by jpazurduy on 03/21/2023.
//  Copyright (c) 2023 jpazurduy. All rights reserved.
//

import UIKit
import MyCocoapodLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log = Logger()
        log.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resurceBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.jpg", in: resurceBundle, compatibleWith: nil)
        print(image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

