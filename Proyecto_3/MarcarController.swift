//
//  MarcarController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MarcarController : UIViewController {
    
    var check : Asistencia?
    var contacto :  [Contacto]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnGaryt(_ sender: Any) {
        
        check!.asiste = true
        
    }
}
