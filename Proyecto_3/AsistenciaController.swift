//
//  Asistencia.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AsistenciaController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    //Variables
    var check : [Asistencia] = []
    var checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Info
        check.append(Asistencia(materia: "Matematicas", horario: "2pm - 5pm", nombre: "Luis Olea", aula: "A15"))
        check.append(Asistencia(materia: "Ingles", horario: "12am - 2pm", nombre: "Oscar", aula: "A13"))
        check.append(Asistencia(materia: "Computacion", horario: "7am - 8am", nombre: "Juan", aula: "E4"))
        check.append(Asistencia(materia: "Matematicas", horario: "2pm - 5pm", nombre: "Luis Olea", aula: "A15"))
        check.append(Asistencia(materia: "Ingles", horario: "12am - 2pm", nombre: "Oscar", aula: "A13"))
        check.append(Asistencia(materia: "Computacion", horario: "7am - 8am", nombre: "Juan", aula: "E4"))
        check.append(Asistencia(materia: "Matematicas", horario: "2pm - 5pm", nombre: "Luis Olea", aula: "A15"))
        check.append(Asistencia(materia: "Ingles", horario: "12am - 2pm", nombre: "Oscar", aula: "A13"))
        check.append(Asistencia(materia: "Computacion", horario: "7am - 8am", nombre: "Juan", aula: "E4"))
        check.append(Asistencia(materia: "Computacion", horario: "7am - 8am", nombre: "Juan", aula: "E4"))
    }
    
    func numberOfSections(in tableView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return check.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaChecks", for: indexPath) as! CeldaAsistenciaController
        
        celda.lblMateria.text = check[indexPath.row].materia
        celda.lblHora.text = check[indexPath.row].horario
        celda.lblNombre.text = check[indexPath.row].nombre
        celda.lblAula.text = check[indexPath.row].aula
        
        celda.vFondo.layer.cornerRadius = 10
        celda.vMarca.layer.cornerRadius = 10
        celda.layer.cornerRadius = 2
    
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 181, height: 181)
    }
}
