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
    
}
