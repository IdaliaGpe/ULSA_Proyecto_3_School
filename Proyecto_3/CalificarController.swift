//
//  CalificarController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class CalificarController : UIViewController {
    
    //Outlets
    @IBOutlet weak var txtCall: UITextField!
    @IBOutlet weak var txtComent: UITextField!
    
    @IBOutlet weak var vFondo: UIView!
    
    @IBOutlet weak var btnCal: UIButton!
    //Variables
    var eva : Evaluacion?
    var callbackGuardar : (() -> Void)?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if eva != nil {
            
            txtCall.text = eva!.cal
            txtComent.text = eva!.comentario
        }
        
        if (eva?.cal != ""){
            btnCal.isEnabled = false
        }
    }
    
    //Action
        @IBAction func doTapGuardar(_ sender: Any) {
        if callbackGuardar != nil {
            eva?.cal = txtCall.text!
            eva?.comentario = txtComent.text!

            callbackGuardar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
}
