//
//  ViewController.swift
//  Interactuando-con-el-hardware-del-dispositivo-iOS_Semana-1_EjemploSonido1
//
//  Created by Juan Carlos Carbajal Ipenza on 19/04/17.
//  Copyright © 2017 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    private var miSonido: SystemSoundID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sonidoURL = Bundle.main.url(forResource: "Submarine", withExtension: "aiff")
        AudioServicesCreateSystemSoundID(sonidoURL! as CFURL, &miSonido)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play() {
        AudioServicesPlaySystemSound(miSonido)
    }
}

