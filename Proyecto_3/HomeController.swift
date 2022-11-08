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
        lblFoto.layer.cornerRadius = 10
        lblFoto.layer.borderWidth = 2
        lblFoto.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        lblFoto.image = UIImage(named: "\(alumno[0].foto)")
                                
        //Horario
        imgFoto.layer.cornerRadius = 10
        imgFoto.layer.borderWidth = 2
        imgFoto.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        //Asistencia
        imgAsistencia.layer.cornerRadius = 10
        imgAsistencia.layer.borderWidth = 2
        imgAsistencia.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        //Eva
        imgEva.layer.cornerRadius = 10
        imgEva.layer.borderWidth = 2
        imgEva.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        //Calendario
        imgCalendario.layer.cornerRadius = 10
        imgCalendario.layer.borderWidth = 2
        imgCalendario.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        //Menu
        imgMenu.layer.cornerRadius = 10
        imgMenu.layer.borderWidth = 2
        imgMenu.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        //View
        vBarra.layer.cornerRadius = 2
        //vBarra.layer.borderWidth = 2
        //vBarra.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        vHorario.layer.cornerRadius = 10
        vHorario.layer.borderWidth = 2
        vHorario.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        vAsis.layer.cornerRadius = 10
        vAsis.layer.borderWidth = 2
        vAsis.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        vEva.layer.cornerRadius = 10
        vEva.layer.borderWidth = 2
        vEva.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        vCal.layer.cornerRadius = 10
        vCal.layer.borderWidth = 2
        vCal.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
        
        vMenu.layer.cornerRadius = 10
        vMenu.layer.borderWidth = 2
        vMenu.layer.borderColor = CGColor(red: 231/255, green: 231/255, blue: 238/255, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToPerfil" {
            let destino = segue.destination as! PerfilController
            destino.alumno = alumno[0]
            
        }
    }
}
