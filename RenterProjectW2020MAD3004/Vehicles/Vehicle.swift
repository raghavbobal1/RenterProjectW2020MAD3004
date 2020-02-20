//
//  Vehicle.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Vehicle: IDisplayDelegate {
    
    private var vehicleId: String
    private var description: String?
    private var manufacturer:String
    private var isSelfDrive: Bool
    private var isInsured: Bool
    private var insuranceProviderName: String?
    private var numberOfSeat: Int
    private var fuelType: FuelType.Type
    private var baseRate: Float
    private var perKmRate: Float
    
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType.Type, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float) {
        self.vehicleId = vehicleId
        self.description = description
        self.manufacturer = manufacturer
        self.fuelType = fuelType
        self.isSelfDrive = isSelfDrive
        self.isInsured = isInsured
        self.insuranceProviderName = insuranceProviderName
        self.numberOfSeat = numberOfSeat
        self.baseRate = baseRate
        self.perKmRate = perKmRate
    }
    
    func display() {
        print("\nVehicle Id             : \(vehicleId)")
        print("Description              : \(description ?? "None")")
        print("Manufacturer             : \(manufacturer)")
        print("Selfdrive?               : \(isSelfDrive)")
        print("Insurance Provider Name  : \(insuranceProviderName ?? "None")")
        print("Number of Seats          : \(numberOfSeat)")
        print("Fuel Type                : \(fuelType)")
        print("Base Rate                : \(baseRate)")
        print("Rate/KM                  : \(perKmRate)")
    }
}