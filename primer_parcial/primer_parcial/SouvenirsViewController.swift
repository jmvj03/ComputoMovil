//
//  SouvenirsViewController.swift
//  primer_parcial
//
//  Created by 2020-1 on 9/20/19.
//  Copyright © 2019 UNAM. All rights reserved.
//

import UIKit

class SouvenirsViewController: UIViewController {
    @IBOutlet var cantidad1: UITextField!
    @IBOutlet var cantidad2: UITextField!
    @IBOutlet var promoCode: UITextField!
    @IBOutlet var comprarButton: UIButton!
    @IBOutlet var mensajeStack: UIStackView!
    @IBOutlet var errorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func comprarButton(_ sender: Any) {
        let cant1 = Int(cantidad1.text ?? "") ?? -1
        let cant2 = Int(cantidad2.text ?? "") ?? -1
        let precio1 = 50
        let precio2 = 20
        var total = 0
        
        if (cant1 >= 0 && cant1 <= 10) && (cant2 >= 0 && cant2 <= 10)
        {
            if cant1 == 0 && cant2 == 0{
                mostrarMensaje(mensaje: "Agrega un elemento!")
            }else{
                //Los datos son válidos, se inicia el cálculo
                total = (cant1 * precio1) + (cant2 * precio2)
                if(promoCode.text == "YOU ROCKS")
                {
                    total /= 2
                }
                else if promoCode.text!.isEmpty == false
                {
                    //Algún dato no es válido, mostramos un mensaje
                    mostrarMensaje(mensaje: "Código de promoción inválido.")
                    return
                }
                cantidad1.text = "0"
                cantidad2.text = "0"
                promoCode.text = ""
                //Mandamos llamar al VC "Exitosa"
                if let vc = storyboard?.instantiateViewController(withIdentifier: "Exitosa") as? ExitosaViewController {
                    //Busca si en el storyboard exite una instancia con el identificador Detail y es de la clase Defail View Controller, entonces vaciala en la variable vc, momentaneamente para usarla dentro.
                    vc.total = total
                    //Si existe un navigationController, mueve la vista hacia VC.
                    //Cambio de vista vìa còdigo
                    navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
        else
        {
            //Algún dato no es válido, mostramos un mensaje.
            mostrarMensaje(mensaje: "Cantidad de souvenirs inválida.")
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    //@IBAction func okButton(_ sender: UIButton) {
        //ocultarMensaje()
    //}
    func mostrarMensaje(mensaje : String)
    {
        let ac = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: nil))
        present(ac, animated: true)
        cantidad1.text = "0"
        cantidad2.text = "0"
        promoCode.text = ""
    }
    
    //func ocultarMensaje()
    //{
       // mensajeStack.isHidden = true
        //comprarButton.isEnabled = true
    //}
}
