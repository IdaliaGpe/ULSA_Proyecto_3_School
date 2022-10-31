//
//  ActualizarPController.swift
//  Proyecto_3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ActualizarPController: UIViewController {
    
    //Outlets
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTutor: UITextField!
    @IBOutlet weak var txtNumeroUno: UITextField!
    @IBOutlet weak var txtNumeroDos: UITextField!
    
    //Variables
    var tutor : String?
    var callbackGuardar : ((String) -> Void)?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if tutor != nil {
            txtNombre.text = tutor!
            txtTutor.text = tutor!
            txtNumeroUno.text = tutor!
            txtNumeroDos.text = tutor!
        }
    }
    
    //Action
    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackGuardar != nil {
            callbackGuardar!(txtNombre.text!)
            callbackGuardar!(txtTutor.text!)
            callbackGuardar!(txtNumeroUno.text!)
            callbackGuardar!(txtNumeroDos.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
