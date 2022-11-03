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
    @IBOutlet weak var tvPago: UITableView!
    @IBOutlet weak var tvPagos: UITableView!
    
    //Variables
    var pago : [Pago] = []
    var pagos: [Pagos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pago.append(Pago(mes: "Inscripcion", limite: "4 de julio", costo: "5000"))
        pago.append(Pago(mes: "Agosto", limite: "1 de Agosto", costo: "1500"))
        pago.append(Pago(mes: "Septiemre", limite: "5 de Octubre", costo: "1500"))
        pago.append(Pago(mes: "Octubre", limite: "3 de Noviembre", costo: "1255"))
        pago.append(Pago(mes: "Noviembre", limite: "14 de Diciembre", costo: "1300"))
        pago.append(Pago(mes: "Diciembre", limite: "13 de Diciembre", costo: "2400"))
        
        pagos.append(Pagos(mes: "Agosto", pagado: "20 de Agosto"))
        pagos.append(Pagos(mes: "Septiembre", pagado: "15 de Septiembre"))
        pagos.append(Pagos(mes: "Octubre", pagado: "15 de Septiembre"))
        pagos.append(Pagos(mes: "Noviembre", pagado: "1 de Octubre"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == tvPago {
            return 1
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tvPago {
            return pago.count
        }
        return pagos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPago") as! CeldaPagoController
        
        celda.lblMes.text = pago[indexPath.row].mes
        celda.lblFecha.text = pago[indexPath.row].limite
        celda.lblCosto.text = pago[indexPath.row].costo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPagos") as! CeldaPagosController
        
        celda.lblMess.text = pagos[indexPath.row].mes
        celda.lblFecha.text = pagos[indexPath.row].pagado
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        69
    }
}
