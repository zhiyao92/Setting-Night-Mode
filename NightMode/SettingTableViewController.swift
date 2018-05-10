//
//  SettingTableViewController.swift
//  NightMode
//
//  Created by Kelvin Tan on 5/10/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    let userDefault = UserDefaults.standard
    @IBOutlet weak var nightSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nightSwitched(_ sender: UISwitch) {
        if nightSwitch.isOn {
            UserDefaults.standard.set(true, forKey: "night")
        } else {
            UserDefaults.standard.set(false, forKey: "night")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nightSwitch.isOn = userDefault.bool(forKey: "night")
    }


}
