//
//  BLEPeripheralManager.swift
//  Liverpool
//
//  Created by Mac OS lab on 13/05/25.
//

import Foundation

protocol BLEPeripheralManaging {
    func startAdvertising(uuid: String)
    func stopAdvertising()
}
