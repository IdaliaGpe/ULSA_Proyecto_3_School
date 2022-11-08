//
//  HomeController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class HomeController : UIViewController {
    
    //Outlets
    @IBOutlet weak var lblFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblid: UILabel!
    
    //Variable
    var alumno : [Alumno] = []
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Info
        alumno.append(Alumno(nombre: "Idalia Guadalupe Padilla Aispuro", id: "199063", area: "Ingenieria", edificio: "Talleres", coordinador: "Eduardo Nuñes", tutor: "Guillermo Cevez", carreta: "IPM", grupo: "AE-14", grado: "7º", foto: "Perfil"))
        
        //Mostrar
        lblNombre.text = alumno[0].nombre
        lblid.text = alumno[0].id
                    
        lblFoto.layer.cornerRadius = 10
        lblFoto.layer.borderWidth = 2
        lblFoto.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        lblFoto.image = UIImage(named: "\(alumno[0].foto)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToPerfil" {
            let destino = segue.destination as! PerfilController
            destino.alumno = alumno[0]
            
        }
    }
}
