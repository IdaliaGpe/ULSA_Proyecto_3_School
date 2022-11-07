//
//  PerfilController.swift
//  Proyecto_3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PerfilController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlets
    @IBOutlet weak var tvContacto: UITableView!
    
    //Variables
    var contacto : [Contacto] = []
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contacto.append(Contacto(nombre: "Jose Padilla", tutor: "Padre", numerouno: "6442265183", numerodos: "64414367199"))
        contacto.append(Contacto(nombre: "Idalia Aispuro", tutor: "Madre", numerouno: "6442265183", numerodos: "64414367199"))
        contacto.append(Contacto(nombre: "Domingo Aispuro", tutor: "Abuelo", numerouno: "6442265183", numerodos: "64414367199"))
        contacto.append(Contacto(nombre: "Eduardo Padilla", tutor: "Hermano", numerouno: "6442265183", numerodos: "64414367199"))
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContacto" {
            let destino = segue.destination as! ActualizarPController
            destino.contacto = contacto[tvContacto.indexPathForSelectedRow!.row]
            destino.callbackGuardar = guardarDatos
        }
    }
    
    //Actualizar
    func guardarDatos() {
        tvContacto.reloadData()
    }
    
    //Tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contacto.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaActualizarContorller
        
        celda.lblNombre.text = contacto[indexPath.row].nombre
        celda.lblTutor.text = contacto[indexPath.row].tutor
        celda.lblNumeroUno.text = contacto[indexPath.row].numerouno
        celda.lblNumeroDos.text = contacto[indexPath.row].numerodos
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
