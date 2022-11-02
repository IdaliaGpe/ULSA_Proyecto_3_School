//
//  Horario.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.


class Horario {
    var clase : String
    var hora : String
    var maestro : String
    var aula : String
    
    init(clase: String, hora: String, maestro: String, aula: String) {
        self.clase = clase
        self.hora = hora
        self.maestro = maestro
        self.aula = aula
    }
    
}
