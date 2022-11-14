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
    var alumno : Alumno?
    var contacto :  [Contacto]?
    
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
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContacto" {
            let destino = segue.destination as! ActualizarPController
            destino.contacto = contacto![tvContacto.indexPathForSelectedRow!.row]
            destino.callbackGuardar = guardarDatos
        } else if segue.identifier == "goToContacto" {
            let destino = segue.destination as! PerfilController
            destino.contacto = contacto
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
         return contacto!.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaActualizarContorller
        
        celda.lblNombre.text = contacto![indexPath.row].nombre
        celda.lblTutor.text = contacto![indexPath.row].tutor
        celda.lblNumeroUno.text = contacto![indexPath.row].numerouno
        celda.lblNumeroDos.text = contacto![indexPath.row].numerodos
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
