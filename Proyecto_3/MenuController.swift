//
//  MenuController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MenuController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    
    //Variables
    var menu : [Menu] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu.append(Menu(nombre: "Sopa de Camaron", timpo: "Comida del Dia", horapedido: "2pm", costo: "50", imagen: ""))
        menu.append(Menu(nombre: "Sandwich", timpo: "Diario", horapedido: "Siempre", costo: "23", imagen: ""))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as!
        CeldaMenuController
        
        celda.lblNombre.text = menu[indexPath.row].nombre
        celda.lblTiempo.text = menu[indexPath.row].timpo
        celda.lblHorario.text = menu[indexPath.row].horapedido
        celda.lblCosto.text = menu[indexPath.row].costo
        celda.lblFoto.image = (UIImage(named: menu[indexPath.row].imagen))
    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 69
    }
}
