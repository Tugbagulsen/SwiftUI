//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by Tugba Gulsen on 11/10/22.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func geri(_ sender: Any) {
        navigationController?
            .popToRootViewController(animated: true)
    }
    
}
