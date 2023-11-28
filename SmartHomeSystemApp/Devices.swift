//
//  Devices.swift
//  SmartHomeSystemApp
//
//  Created by Slack, Ed (AMM) on 28/11/2023.
//

import Foundation

class Device {
    
    var name: String
    var turnedOn: Bool
    var location: String
    
    init(name: String, turnedOn: Bool, location: String){
        self.name = name
        self.turnedOn = turnedOn
        self.location = location
    }
    func turnOn(){
        turnedOn = true
    }
    func turnOf(){
        turnedOn = false
    }
    
}
class Light: Device {

    var brightness: Int = 100
    var colour: String = "White"
}
    
class Dimmable: Light {
    func adjustBrightness(_ brightnessChange: Int){
        if brightness + brightnessChange >= 100{
            brightness = 100
        } else if brightness + brightnessChange >= 0{
            brightness = 0
        } else{
            brightness += brightnessChange
        }
    }
}

class ColourChanging:Light {
    func changeColour(_ colour: String){
        self.colour = colour
    }
}


class SoundSystem:Device {

    var volume: Int = 0
    var currentSong: String = ""
    
}


class Heating:Device {
    var temperature: Int = 20

    
}
