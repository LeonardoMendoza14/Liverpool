//
//  BLEDevice.swift
//  Liverpool
//
//  Created by Mac OS lab on 13/05/25.
//

struct BLEDevice: Identifiable, Equatable {
    let id: String          // UUID del dispositivo (advertised)
    let name: String?       // Nombre legible si está disponible
    let rssi: Int?          // Señal de recepción
}
