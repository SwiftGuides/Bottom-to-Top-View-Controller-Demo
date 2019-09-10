//
//  SecondViewController.swift
//  buttomTopDemo
//
//  Created by MacMini on 9/10/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit
import FittedSheets
class SecondViewController: UIViewController {

@IBOutlet weak var scrollViewEx: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.sheetViewController?.handleScrollView(self.scrollViewEx)
    }



    
}
