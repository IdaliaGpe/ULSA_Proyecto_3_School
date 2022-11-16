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
    
    var callBackAsistencia : (() -> Void)?
    
    @IBOutlet weak var btnCheck: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (check?.asiste == true) {
            btnCheck.tintColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
            btnCheck.isEnabled = false
        }
    }
    
    @IBAction func btnGaryt(_ sender: Any) {
        
        if callBackAsistencia != nil {
            check?.asiste = true
            callBackAsistencia!()
            
            btnCheck.tintColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
            btnCheck.isEnabled = false
            
            self.navigationController?.popViewController(animated: true)
        }
    }
}
