//
//  Asistencia.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Asistencia {
    var materia : String
    var horario : String
    var nombre : String
    var aula : String
    var asiste : Bool
    
    init(materia: String, horario: String, nombre: String, aula: String, asiste: Bool) {
        self.materia = materia
        self.horario = horario
        self.nombre = nombre
        self.aula = aula
        self.asiste = asiste
    }
}
