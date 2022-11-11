//
//  MenuController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MenuController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
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
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        menu.append(Menu(nombre: "Huevito", timpo: "Desayuno", horapedido: "7am - 10am", costo: "20", imagen: "Perfil"))
        
    }
    
    func numberOfSections(in tableView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaMenu", for: indexPath) as! CeldaMenuController
        
        celda.lblNombre.text = menu[indexPath.row].nombre
        celda.lblTiempo.text = menu[indexPath.row].timpo
        celda.lblHorario.text = menu[indexPath.row].horapedido
        celda.lblCosto.text = menu[indexPath.row].costo
        celda.lblFoto.image = (UIImage(named: menu[indexPath.row].imagen))
    
        celda.lblFoto.layer.cornerRadius = 10
        celda.vFondo.layer.cornerRadius = 10
        celda.layer.cornerRadius = 2
    
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 181)
    }
}
