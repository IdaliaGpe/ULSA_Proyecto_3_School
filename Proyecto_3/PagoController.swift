//
//  PagoController.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PagoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    
    //Variables
    var pago : [Pago] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pago.append(Pago(mes: "Septiemre", limite: "5 de Octubre", costo: "1500"))
        pago.append(Pago(mes: "Octubre", limite: "3 de Noviembre", costo: "1255"))
        pago.append(Pago(mes: "Noviembre", limite: "14 de Diciembre", costo: "1300"))
        pago.append(Pago(mes: "Diciembre", limite: "13 de Diciembre", costo: "2400"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pago.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPago") as! CeldaPagoController
        
        celda.lblMes.text = pago[indexPath.row].mes
        celda.lblFecha.text = pago[indexPath.row].limite
        celda.lblCosto.text = pago[indexPath.row].costo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        69
    }
}
