//
//  EvaluacionController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EvaluacionController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    @IBOutlet weak var tvEva: UITableView!
    
    //Variables
    var eva : [Evaluacion]?
    var contacto :  [Contacto]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContestar" {
            let destino = segue.destination as! CalificarController
            destino.eva = eva![tvEva.indexPathForSelectedRow!.row]
            destino.callbackGuardar = guardarDatos
        } else if segue.identifier == "goToContacto" {
            let destino = segue.destination as! PerfilController
            destino.contacto = contacto
        }
    }
        
    //Actualizar
    func guardarDatos() {
        tvEva.reloadData()
    }
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eva!.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaEvaluacion") as! CeldaEvaluacionController
        celda.lblMateria.text = eva![indexPath.row].materia
        celda.lblNombre.text = eva![indexPath.row].nombre
        celda.lblCalificacion.text = eva![indexPath.row].cal
        celda.lblComentario.text = eva![indexPath.row].comentario
            
        return celda
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 121
    }
}
