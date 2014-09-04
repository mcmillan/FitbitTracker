//
//  ViewController.swift
//  FitbitTracker
//
//  Created by Josh McMillan on 04/09/2014.
//  Copyright (c) 2014 Chainsaw. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController, CBCentralManagerDelegate {
    
    var centralManager: CBCentralManager!
    
    override func viewDidLoad() {
        centralManager = CBCentralManager(delegate: self, queue: nil)
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centralManagerDidUpdateState(central: CBCentralManager!) {
        println("Central manager has updated state - how exciting.")
        
        switch(central.state) {
            case .PoweredOff:
                println("BLE turned off.")
            
            case .PoweredOn:
                println("BLE turned on.")
            
            case .Resetting:
                println("BLE hardware is resetting.")
            
            case .Unauthorized:
                println("Not authorized for BLE access.")
        
            case .Unknown:
                println("BLE status is unknown.")
            
            case .Unsupported:
                println("BLE is unsupported on this platform")
        }
    }

}

