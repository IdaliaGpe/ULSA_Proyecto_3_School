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
    var eva : [Evaluacion] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eva.append(Evaluacion(materia: "Matematicas", nombre: "Luis Olea", cal: "5", comentario: "Buen maestro, flexible, sabe explicar, educado, atento, comprometido, cumple el temario"))
        eva.append(Evaluacion(materia: "Programacion Movil", nombre: "Emiliano", cal: "5", comentario: "Buen maestro, flexible, sabe explicar, educado, atento, comprometido, cumple el temario"))
        eva.append(Evaluacion(materia: "Flores", nombre: "Lorenzo", cal: "1", comentario: "Mal maestro, no es flexible, no sabe explicar, no es educado, para nada atento, no esta comprometido, y no cumple el temario"))
        eva.append(Evaluacion(materia: "Programacion 1", nombre: "Margarita", cal: "", comentario: ""))
    }
    
    //Codigo Destino
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContestar" {
            let destino = segue.destination as! CalificarController
            destino.eva = eva[tvEva.indexPathForSelectedRow!.row]
            destino.callbackGuardar = guardarDatos
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
        return eva.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaEvaluacion") as! CeldaEvaluacionController
        celda.lblMateria.text = eva[indexPath.row].materia
        celda.lblNombre.text = eva[indexPath.row].nombre
        celda.lblCalificacion.text = eva[indexPath.row].cal
        celda.lblComentario.text = eva[indexPath.row].comentario
            
        return celda
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 121
    }
}
