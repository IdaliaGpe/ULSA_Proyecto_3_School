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
    
    @IBOutlet weak var lblFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblid: UILabel!
    @IBOutlet weak var lblArea: UILabel!
    @IBOutlet weak var lblEdificio: UILabel!
    @IBOutlet weak var lblCoordinador: UILabel!
    @IBOutlet weak var lblTutor: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    @IBOutlet weak var lblGrupo: UILabel!
    @IBOutlet weak var lblGrado: UILabel!
    
    //Variables
    var contacto : [Contacto] = []
    var alumno : Alumno?
    
    //Codigo
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if alumno != nil {
            
            lblNombre.text = alumno?.nombre
            lblid.text = alumno?.id
            lblArea.text = alumno?.area
            lblEdificio.text = alumno?.edificio
            lblCoordinador.text = alumno?.coordinador
            lblTutor.text = alumno?.tutor
            lblCarrera.text = alumno?.carreta
            lblGrupo.text = alumno?.grupo
            lblGrado.text = alumno?.grado
            
            lblFoto.layer.cornerRadius = 50
            lblFoto.layer.cornerRadius = 10
            lblFoto.image = UIImage(named: "\(alumno!.foto)")
        }
        
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
        tvContacto.refreshControl?.endRefreshing()
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
