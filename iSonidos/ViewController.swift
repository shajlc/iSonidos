//
//  ViewController.swift
//  iSonidos
//
//  Created by Cetys on 13/11/2019.
//  Copyright © 2019 Sharon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductor : AVAudioPlayer!
    
    @IBAction func sonidoPulsado(_ sender: UIButton) {
        reproductor.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Declaramos una constante
        let rutaAlArchivo : URL = Bundle.main.url(forResource: "__trata_de_arrancarlo1", withExtension: "mp3")!
        do{
            try reproductor = AVAudioPlayer(contentsOf: rutaAlArchivo)
        }catch{
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

