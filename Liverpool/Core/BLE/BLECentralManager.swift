//
//  BLECentralManager.swift
//  Liverpool
//
//  Created by Mac OS lab on 13/05/25.
//

import Foundation

protocol BLECentralManaging {
    func startScanning()
    func stopScanning()
    var onDeviceDiscovered: ((BLEDevice) -> Void)? { get set }
}
