//
//  tools.swift
//  Clickups
//
//  Created by AndrewPeng on 2020/12/23.
//

import Alamofire
import Foundation
import Kingfisher
import Network
import SystemConfiguration
import UIKit

func clearUserDefaultData() {
    let ud = UserDefaults.standard
    let dics = ud.dictionaryRepresentation()
    for key in dics {
        ud.removeObject(forKey: key.key)
    }
    ud.synchronize()
}

func synchronized<T>(_ lock: AnyObject, _ body: () throws -> T) rethrows -> T {
    objc_sync_enter(lock)
    defer { objc_sync_exit(lock) }
    return try body()
}

func CmToFeet(cm: Double) -> String {
    let inch = cm / 2.54
    var feet = Int(inch / 12.0)
    var inch2 = Int(round(inch.truncatingRemainder(dividingBy: 12.0)))
    if inch2 == 12 {
        feet += 1
        inch2 = 0
    }
    return "\(feet)'\(inch2)"
}
