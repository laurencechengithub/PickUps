//
//  DebugPrint.swift
//  SPAPP
//
//  Created by REDPAY - Laurence on 2020/6/16.
//  Copyright © 2020 REDPAY - Laurence. All rights reserved.
//

import Foundation

func dPrint(_ item: Any..., function: String = #function) {
    #if DEBUG
        print("Check@ \(function): \(item)")
    #endif
}

func aPrint(_ item: Any..., function: String = #function) {
    #if DEBUG
        print("Drew--@ ➤ ➤ \(item)")
    #endif
}

func mPrint(_ item: Any..., function: String = #function) {
    #if DEBUG
        print("MAKO--@ ➤ ➤ \(item)")
    #endif
}

func log(_ TAG: String, _ str: String) {
    print("\(Date().logTime()) ➤ \(TAG) ➤ \(str)")
}
