//
//  ViewController.swift
//  IdadeCachorro
//
//  Created by Vanessa Montagner on 17/09/20.
//  Copyright © 2020 Vanessa Montagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var campoIdade: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultado.text = ""
        
        
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func descobrirIdade(_ sender: UIButton) {
        
        var idade = Int(campoIdade.text!)
        
        if campoIdade.text!.isEmpty {
            resultado.text = "Digite um número"
            
        }else if idade == Int(0){
            resultado.text = "Digite um número válido"
        }else{
        idade = Int(idade! * 7)
        
            resultado.text = " A idade do cachorro é " + String(idade!) + " anos."
            
        }
        
    }
    
}

