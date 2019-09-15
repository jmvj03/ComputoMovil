//
//  ViewController.swift
//  ColorView
//
//  Created by 2020-1 on 8/30/19.
//  Copyright © 2019 Conde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Referenciamos el colorView arrastrando el elemnto grafico al codigo
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        //Una forma de poner un color es pasarle el nombre del color
        colorView.layer.borderColor = UIColor.black.cgColor
        //Declaramos 3 variables para los colores
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        
        if redSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            blue = CGFloat(blueSlider.value)
        }
        
        //Construimos una constante color para poder pasar el RGB al backgroundColor
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        colorView.backgroundColor = color
        updateControls()
        updateColors()
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    func updateColors(){
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        
        if redSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            //se construye el dato tipo cgfloat a traves de un float, no es un casting
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        colorView.backgroundColor = color
        
    }

    @IBAction func sliderChanged(_ sender: Any) {
        updateColors()
    }
    
    @IBAction func switchchanged(_ sender: Any) {
        updateControls()
        updateColors()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateControls()
        updateColors()
    }
    
}

