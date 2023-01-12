//
//  AppSettings.swift
//  SwiftDesignPatterns
//
//  Created by HAQQQABD on 13/01/2023.
//

import Foundation

final public class AppSettings {
    public static let shared = AppSettings()
    
    var settings : [String:Any] = ["DeveloperModeEnabled": 1, "AllowToUpload": 0, "GreetingLogo":"welcome"]
    
    private init(){}
    
    public func string(for key: String) -> String? {
        return settings[key] as? String
    }
    
    public func int(for key: String) -> Int? {
        return settings[key] as? Int
    }
    
    public func set(value: Any, for key: String) {
        settings[key] = value
    }
    
}
