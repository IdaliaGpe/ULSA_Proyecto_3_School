//
//  HorarioController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class HorarioController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    @IBOutlet weak var tvHorario: UITableView!
    
    //Variables
    var horario : [Horario] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvHorario.backgroundColor = .clear
        
        horario.append(Horario(clase: "Matematicas", hora: "2pm - 4pm", maestro: "Luis Olea", aula: "A15"))
        horario.append(Horario(clase: "Moviles", hora: "7am - 9am", maestro: "Emiliano", aula: "D5"))
        horario.append(Horario(clase: "Diosito", hora: "12pm - 1pm", maestro: "Jorge", aula: "A12"))
        horario.append(Horario(clase: "Mercadotecnia", hora: "5pm - 6pm", maestro: "Yuriria", aula: "A13"))
        horario.append(Horario(clase: "Redes", hora: "7pm - 9pm", maestro: "Ruben", aula: "E3"))
        horario.append(Horario(clase: "Modelado", hora: "9am - 12pm", maestro: "Jorge", aula: "A12"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horario.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaHorario") as!
        CeldaHorarioController
        
        //celda.contentView.backgroundColor = UIColor(red: 18/255, green: 45/255, blue: 218/255, alpha: 1)
        
        celda.lblClase.text = horario[indexPath.row].clase
        celda.lblHorario.text = horario[indexPath.row].hora
        celda.lblMaestro.text = horario[indexPath.row].maestro
        celda.lblAula.text = horario[indexPath.row].aula
    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
}
