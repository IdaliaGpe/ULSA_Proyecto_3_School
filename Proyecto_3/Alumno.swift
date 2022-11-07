//
//  Alumno.swift
//  Proyecto_3
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre : String
    var id : String
    var area : String
    var edificio : String
    var coordinador : String
    var tutor : String
    var carreta : String
    var grupo : String
    var grado : String
    var foto : String
    
    init(nombre: String, id: String, area: String, edificio: String, coordinador: String, tutor: String, carreta: String, grupo: String, grado: String, foto: String) {
        self.nombre = nombre
        self.id = id
        self.area = area
        self.edificio = edificio
        self.coordinador = coordinador
        self.tutor = tutor
        self.carreta = carreta
        self.grupo = grupo
        self.grado = grado
        self.foto = foto
    }
}
