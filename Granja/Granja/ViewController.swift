//
//  ViewController.swift
//  Granja
//
//  Created by 2020-1 on 9/12/19.
//  Copyright © 2019 Conde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundsLabel: UILabel!
    let meow = SimpleSound(named: "meow")
    let woof = SimpleSound(named: "woof")
    let moo = SimpleSound(named: "moo")
    
    @IBAction func catButtonTaped(_ sender: Any) {
        animalSoundsLabel.text = "Meow"
        meow.play()
    }
    
    @IBAction func dogButtonTaped(_ sender: Any) {
        animalSoundsLabel.text = "Woof"
        woof.play()
    }
    
    @IBAction func cowButtonTaped(_ sender: Any) {
        animalSoundsLabel.text = "Moo"
        moo.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

