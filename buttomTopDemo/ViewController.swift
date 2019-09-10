//
//  ViewController.swift
//  buttomTopDemo
//
//  Created by MacMini on 9/10/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit
import FittedSheets
class ViewController: UIViewController {

    let controller = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    @IBAction func showPopupButton(_ sender: Any) {
        let storyboardScreen = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let sheetController = SheetViewController(controller: storyboardScreen, sizes: [.fixed(300),.fullScreen])
        sheetController.extendBackgroundBehindHandle = true
        sheetController.handleColor = UIColor.lightGray
        sheetController.dismissOnBackgroundTap = true
        sheetController.adjustForBottomSafeArea = true
        // It is important to set animated to false or it behaves weird currently
        self.present(sheetController, animated: false, completion: nil)
    }
    
}

