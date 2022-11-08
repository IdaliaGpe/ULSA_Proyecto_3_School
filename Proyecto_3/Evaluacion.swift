//
//  Evaluacion.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class Evaluacion {
    var materia : String
    var nombre : String
    var cal : String
    var comentario : String
    
    init(materia: String, nombre: String, cal: String, comentario: String) {
        self.materia = materia
        self.nombre = nombre
        self.cal = cal
        self.comentario = comentario
    }
}
