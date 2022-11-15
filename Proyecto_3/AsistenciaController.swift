//
//  Asistencia.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AsistenciaController : UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvAsiste: UITableView!
    
    //Variables
    var check : [Asistencia]?
    
    var contacto :  [Contacto]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return check!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCheck") as! CeldaAsistenciaController
        
        celda.lblMateria.text = check![indexPath.row].materia
        celda.lblHora.text = check![indexPath.row].horario
        celda.lblNombre.text = check![indexPath.row].nombre
        celda.lblAula.text = check![indexPath.row].aula
    
        return celda
    }
    
        //if (check![indexPath.row].asiste == true)
        //{
            //celda.btnCheck.tintColor = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1)
            //celda.btnCheck.isEnabled = false

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 97
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToMarcar" {
            let destino = segue.destination as! MarcarController
            destino.contacto = contacto
            destino.check = check![tvAsiste.indexPathForSelectedRow!.row]
        }
    }
}
