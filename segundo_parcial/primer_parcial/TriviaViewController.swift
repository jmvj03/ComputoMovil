//
//  TriviaViewController.swift
//  primer_parcial
//
//  Created by 2020-1 on 9/20/19.
//  Copyright © 2019 UNAM. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet var respuesta1: UISwitch!
    @IBOutlet var respuesta2: UISwitch!
    @IBOutlet var respuesta3: UISwitch!
    @IBOutlet var respuesta4: UISwitch!
    @IBOutlet var respuesta5: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        apagaBotones()
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func revisarButton(_ sender: Any) {
        //Aqui se revisarán que las respuestas de verdaro y falso de los swtich sean correctas
        
        //Respuestas:
        //1:VERDADERO
        //2:FALSO
        //3:VERDADERO
        //4:FALSO
        //5:VERDADERO
        
        var correctas = 0
        
        if respuesta1.isOn
        {
            correctas += 1
        }
        if respuesta2.isOn
        {
            correctas -= 1
        }
        else
        {
            correctas += 1
        }
        if respuesta3.isOn
        {
            correctas += 1
        }
        if respuesta4.isOn
        {
            correctas -= 1
        }
        else
        {
            correctas += 1
        }
        if respuesta5.isOn
        {
            correctas += 1
        }
        
        //Compara si todas son correctas
        if correctas == 5
        {
            performSegue(withIdentifier: "Correcto", sender: sender)
        }
        else
        {
            performSegue(withIdentifier: "Incorrecto", sender: sender)
        }
        apagaBotones()
    }
    
    func apagaBotones()
    {
        respuesta1.setOn(false, animated: true)
        respuesta2.setOn(false, animated: true)
        respuesta3.setOn(false, animated: true)
        respuesta4.setOn(false, animated: true)
        respuesta5.setOn(false, animated: true)
    }
    
    @IBAction func unwindIncorrecto(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }

}
