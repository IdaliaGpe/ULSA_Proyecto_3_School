//
//  Asistencia.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AsistenciaController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Variables
    var check : [Asistencia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        check.append(Asistencia(materia: "Matematicas", horario: "2pm - 5pm", nombre: "Luis Olea", aula: "A15", adv: "Sin Confirmar"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return check.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCheck") as!
        CeldaAsistenciaController
        
        celda.lblMateria.text = check[indexPath.row].materia
        celda.lblHora.text = check[indexPath.row].horario
        celda.lblNombre.text = check[indexPath.row].nombre
        celda.lblAula.text = check[indexPath.row].aula
        
        celda.lblAdvertencia.text = check[indexPath.row].adv
        celda.swCheck.
    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
