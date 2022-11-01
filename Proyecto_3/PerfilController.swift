//
//  PerfilController.swift
//  Proyecto_3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PerfilController: UIViewController {
    
    //Outlets
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblTutor: UILabel!
    @IBOutlet weak var lblNumeroUno: UILabel!
    @IBOutlet weak var lblNumeroDos: UILabel!
    
    //Variables
    var contacto : Contacto?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContacto" {
            let destino = segue.destination as! ActualizarPController
            destino.tutor = lblNombre.text
            destino.tutor = lblTutor.text
            destino.tutor = lblNumeroUno.text
            destino.tutor = lblNumeroDos.text
            //Esto es lo que debemos corregir
            
            //destino.contacto = contacto
            destino.callbackGuardar = guardarDatos
        }
    }
    
    //Actualizar
    func guardarDatos(tutor: String) {
        lblNombre.text = tutor
        lblTutor.text = tutor
        lblNumeroUno.text = tutor
        lblNumeroDos.text = tutor
        //lblNombre.text = self.contacto?.nombre
        //lblTutor.text = self.contacto?.tutor
        //lblNumeroUno.text = self.contacto?.numerouno
        //lblNumeroDos.text = self.contacto?.numerodos
    }
}
