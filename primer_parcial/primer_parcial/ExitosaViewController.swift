//
//  ExitosaViewController.swift
//  primer_parcial
//
//  Created by 2020-1 on 9/20/19.
//  Copyright © 2019 UNAM. All rights reserved.
//

import UIKit

class ExitosaViewController: UIViewController {
    
    var total = 0
    @IBOutlet var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = "$" + String(total)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
