//
//  ViewController.swift
//  ProgramaticSegue
//
//  Created by 2020-1 on 9/6/19.
//  Copyright © 2019 Conde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func orangeButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Orange", sender: sender)
        }
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Yellow", sender: sender)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ejecuto segue:", segue.identifier!)
        if let sender = sender as? UIButton{
            print("El boton es:")
            print(sender.currentTitle!)
        }
    }
    
}

