//
//  AppSettings.swift
//  SwiftDesignPatterns
//
//  Created by HAQQQABD on 13/01/2023.
//

import Foundation

final public class AppSettings {
    public static let shared = AppSettings()
    
    private let serialQueue = DispatchQueue(label: "SerialQueue")
    
    var settings : [String:Any] = ["DeveloperModeEnabled": 1, "AllowToUpload": 0, "GreetingLogo":"welcome"]
    
    private init(){}
    
    public func string(for key: String) -> String? {
        var result : String?
        serialQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    
    public func int(for key: String) -> Int? {
        var result : Int?
        serialQueue.sync {
            result = settings[key] as? Int
        }
        return result
    }
    
    public func set(value: Any, for key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }
    
}
