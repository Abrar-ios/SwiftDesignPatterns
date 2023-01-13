//
//  AppSettings.swift
//  SwiftDesignPatterns
//
//  Created by HAQQQABD on 13/01/2023.
//

import Foundation

final public class AppSettings {
    public static let shared = AppSettings()
    
    private let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
    
    var settings : [String:Any] = ["DeveloperModeEnabled": 1, "AllowToUpload": 0, "GreetingLogo":"welcome"]
    
    private init(){}
    
    public func string(for key: String) -> String? {
        var result : String?
        concurrentQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    
    public func int(for key: String) -> Int? {
        var result : Int?
        concurrentQueue.sync {
            result = settings[key] as? Int
        }
        return result
    }
    
    public func set(value: Any, for key: String) {
        concurrentQueue.async(flags: .barrier) {
            self.settings[key] = value
        }
    }
    
}
