//
//  AESCryption.swift
//  SPAPP
//
//  Created by LaurenceRedpay20 on 2020/9/16.
//  Copyright © 2020 REDPAY - Laurence. All rights reserved.
//

import CryptoSwift
import Foundation

extension String {
    func encryptToAESWith(userInputPwd: String, doneHandler: @escaping (Bool, String) -> Void) {
        var count = userInputPwd.count
        let suffixKeyArr = ["A", "n", "d", "y", "N", "B", "m", "b"]

        var key = userInputPwd
        count = (16 - count) > 8 ? 8 : 16 - count

        for i in 0 ..< count {
            key.append(suffixKeyArr[i])
        }

        let iv = "AndyNBmbAndyNBmb"
        do {
            let aes = try AES(key: key.bytes, blockMode: CBC(iv: iv.bytes), padding: .pkcs7)
            let encrypted = try aes.encrypt(bytes)
            doneHandler(true, encrypted.toBase64()!)
        } catch {
            doneHandler(false, "Error: \(error)")
        }
        return
    }

    func decryptToAES(pwd: String, doneHandler: @escaping (Bool, String) -> Void) {
        var count = pwd.count
        let keyArr = ["A", "n", "d", "y", "N", "B", "m", "b"]

        var key = pwd
        count = (16 - count) > 8 ? 8 : 16 - count

        for i in 0 ..< count {
            key.append(keyArr[i])
        }

        let IV = "AndyNBmbAndyNBmb" // Fixed on both on iOS/Andriod

        do {
            let encrypted = self
            let key = Array(key.utf8)
            let iv = Array(IV.utf8)
            let aes = try AES(key: key, blockMode: CBC(iv: iv), padding: .pkcs7)

            let decrypted = try aes.decrypt(Array(base64: encrypted))
            doneHandler(true, String(data: Data(decrypted), encoding: .utf8) ?? "err")

        } catch {
            doneHandler(false, "Error: \(error)")
        }
    }
}
