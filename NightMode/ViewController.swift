//
//  ViewController.swift
//  NightMode
//
//  Created by Kelvin Tan on 5/10/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userDefault = UserDefaults.standard
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if userDefault.bool(forKey: "night") == true {
            textView.textColor = UIColor.white
            view.backgroundColor = UIColor.black
        } else {
            textView.textColor = UIColor.black
            view.backgroundColor = UIColor.white
        }
    }

    @IBAction func settingsPressed(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "toSettings", sender: self)
    }
    
}

