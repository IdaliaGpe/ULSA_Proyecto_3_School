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
    var contacto : Contacto?
    var callbackGuardar : (() -> Void)?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contacto != nil {
            
            txtNombre.text = contacto!.nombre
            txtTutor.text = contacto!.tutor
            txtNumeroUno.text = contacto!.numerouno
            txtNumeroDos.text = contacto!.numerodos
        }
    }
    
    //Action
    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackGuardar != nil {
            contacto?.nombre = txtNombre.text!
            contacto?.tutor = txtTutor.text!
            contacto?.numerouno = txtNumeroUno.text!
            contacto?.numerodos  = txtNumeroDos.text!
            callbackGuardar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
}
