//
//  GlobalValue.swift
//  SPAPP
//
//  Created by REDPAY - Laurence on 2020/6/9.
//  Copyright © 2020 REDPAY - Laurence. All rights reserved.
//

import DeviceKit
import Foundation
import StoreKit
import UIKit

enum GlobalValue {
    static let uuid = UIDevice.current.identifierForVendor?.uuidString ?? "uuid"
    static let osVersion = UIDevice.current.systemVersion
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let currentDevice = Device.current
    static var taiwanStates = ["基隆市", "台北市", "新北市", "宜蘭縣", "桃園市",
                               "新竹市", "新竹縣", "苗栗縣", "台中市", "彰化縣",
                               "南投縣", "雲林縣", "嘉義市", "嘉義縣", "台南市",
                               "高雄市", "屏東縣", "花蓮縣", "台東縣", "澎湖縣",
                               "連江縣", "金門縣"]

    static var mockFollowList: [MemberModel] = [MemberModel(id: 1, img: "", name: "追蹤名單1", fansCount: "10.5萬 粉絲"),
                                                MemberModel(id: 2, img: "", name: "追蹤名單2", fansCount: "11.5萬 粉絲"),
                                                MemberModel(id: 3, img: "", name: "追蹤名單3", fansCount: "12.5萬 粉絲"),
                                                MemberModel(id: 4, img: "", name: "追蹤名單4", fansCount: "13.5萬 粉絲")]

    static var mockFanList: [MemberModel] = [MemberModel(id: 5, img: "", name: "粉絲名單1", fansCount: "10.5萬 粉絲"),
                                             MemberModel(id: 6, img: "", name: "粉絲名單2", fansCount: "11.5萬 粉絲"),
                                             MemberModel(id: 7, img: "", name: "粉絲名單3", fansCount: "12.5萬 粉絲"),
                                             MemberModel(id: 8, img: "", name: "粉絲名單4", fansCount: "13.5萬 粉絲")]

    static var mockGlobalSearchList: [MemberModel] = [MemberModel(id: 1, img: "", name: "追蹤名單1", fansCount: "10.5萬 粉絲"),
                                                      MemberModel(id: 2, img: "", name: "追蹤名單2", fansCount: "11.5萬 粉絲"),
                                                      MemberModel(id: 3, img: "", name: "追蹤名單3", fansCount: "12.5萬 粉絲"),
                                                      MemberModel(id: 4, img: "", name: "追蹤名單4", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 10, img: "", name: "全系統名單1", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 11, img: "", name: "全系統名單2", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 12, img: "", name: "全系統名單3", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 13, img: "", name: "全系統名單4", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 14, img: "", name: "全系統名單5", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 15, img: "", name: "全系統名單6", fansCount: "13.5萬 粉絲"),
                                                      MemberModel(id: 5, img: "", name: "粉絲名單1", fansCount: "10.5萬 粉絲"),
                                                      MemberModel(id: 6, img: "", name: "粉絲名單2", fansCount: "11.5萬 粉絲"),
                                                      MemberModel(id: 7, img: "", name: "粉絲名單3", fansCount: "12.5萬 粉絲"),
                                                      MemberModel(id: 8, img: "", name: "粉絲名單4", fansCount: "13.5萬 粉絲")]

    static var mockClubMemberList: [MemberModel] = [MemberModel(id: 21, img: "", name: "俱樂部名單1", fansCount: "10.5萬 粉絲"),
                                                    MemberModel(id: 22, img: "", name: "俱樂部名單2", fansCount: "11.5萬 粉絲"),
                                                    MemberModel(id: 23, img: "", name: "俱樂部名單3", fansCount: "12.5萬 粉絲"),
                                                    MemberModel(id: 24, img: "", name: "俱樂部名單4", fansCount: "13.5萬 粉絲"),
                                                    MemberModel(id: 25, img: "", name: "俱樂部名單5", fansCount: "13.5萬 粉絲"),
                                                    MemberModel(id: 26, img: "", name: "俱樂部名單6", fansCount: "13.5萬 粉絲")]
    
    static var mockReviewList: [MemberModel] = [MemberModel(id: 31, img: "", name: "審核名單1", fansCount: "10.5萬 粉絲"),
                                                MemberModel(id: 32, img: "", name: "審核名單2", fansCount: "11.5萬 粉絲"),
                                                MemberModel(id: 33, img: "", name: "審核名單3", fansCount: "12.5萬 粉絲"),
                                                MemberModel(id: 34, img: "", name: "審核名單4", fansCount: "13.5萬 粉絲")]
    
    static var mockMessageItems: [PKMessageListItem] = [
        .init(hasButton: false, isRead: false, title: "您的動態牆有新貼文", message: "羽球因何而發生？話雖如此，彭端淑曾經說過。", date: Date()),
        .init(hasButton: false, isRead: true, title: "您的球聚即將在半小時後開始", message: "您在『我的第一個羽球俱樂部』的球聚即將在半小時後開始", date: Date()),
        .init(hasButton: true, isRead: false, title: "您的球聚有新的申請", message: "魚子醬 申請要加入『我的第一個羽球俱樂部』的球聚", date: Date())
    ]
}

enum VerifyType: String {
    case verified = "已驗證"
    case notVerified = "未驗證"
    case none = ""
}
