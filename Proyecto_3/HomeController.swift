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
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblid: UILabel!
    
    //Variable
    var alumno : [Alumno] = []
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Info
        alumno.append(Alumno(nombre: "Idalia Guadalupe Padilla Aispuro", id: "199063", area: "Ingenieria", edificio: "Talleres", coordinador: "Lalo", tutor: "Memo", carreta: "IPM", grupo: "AE-14", grado: "7", foto: "Perfil"))
        
        //Mostrar
        lblNombre.text = alumno[0].nombre
        lblid.text = alumno[0].id
                    
        imgFoto.layer.cornerRadius = 10
        imgFoto.layer.borderWidth = 2
        imgFoto.image = UIImage(named: "\(alumno[0].foto)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! PerfilController
        //destino.alumno = alumno[indexPath.row]
    }
}
