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
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var imgAsistencia: UIImageView!
    @IBOutlet weak var imgEva: UIImageView!
    @IBOutlet weak var imgCalendario: UIImageView!
    @IBOutlet weak var imgMenu: UIImageView!
    
    @IBOutlet weak var vBarra: UIView!
    @IBOutlet weak var vHorario: UIView!
    @IBOutlet weak var vAsis: UIView!
    @IBOutlet weak var vEva: UIView!
    @IBOutlet weak var vCal: UIView!
    @IBOutlet weak var vMenu: UIView!
    
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
        
        //Perfil
        lblFoto.layer.cornerRadius = 50
        lblFoto.layer.cornerRadius = 10
        lblFoto.image = UIImage(named: "\(alumno[0].foto)")
                                
        //Horario
        imgFoto.layer.cornerRadius = 50
        imgFoto.layer.cornerRadius = 10
        
        //Asistencia
        imgAsistencia.layer.cornerRadius = 50
        imgAsistencia.layer.cornerRadius = 10
        
        //Eva
        imgEva.layer.cornerRadius = 50
        imgEva.layer.cornerRadius = 10
        
        //Calendario
        imgCalendario.layer.cornerRadius = 50
        imgCalendario.layer.cornerRadius = 10
        
        //Menu
        imgMenu.layer.cornerRadius = 50
        imgMenu.layer.cornerRadius = 10

        
        //View
        vBarra.layer.cornerRadius = 2
        
        vHorario.layer.cornerRadius = 50
        vHorario.layer.cornerRadius = 10
        
        vAsis.layer.cornerRadius = 50
        vAsis.layer.cornerRadius = 10
        
        vEva.layer.cornerRadius = 50
        vEva.layer.cornerRadius = 10
        
        vCal.layer.cornerRadius = 50
        vCal.layer.cornerRadius = 10
        
        vMenu.layer.cornerRadius = 50
        vMenu.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToPerfil" {
            let destino = segue.destination as! PerfilController
            destino.alumno = alumno[0]
            
        }
    }
}
