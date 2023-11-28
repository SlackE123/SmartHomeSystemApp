//
//  Home.swift
//  SmartHomeSystemApp
//
//  Created by Slack, Ed (AMM) on 28/11/2023.
//

import Foundation

class Home{
    
    var allDevices = [Device]()
    var ip: String
    init(_ ipAddress: String,_ currentDevice: Device){
        ip = ipAddress
        allDevices.append(currentDevice)
    }
    func showDevices(_ allDevices: [Device]){
        for device in allDevices{
            print(device)
        }
    }
    
}
