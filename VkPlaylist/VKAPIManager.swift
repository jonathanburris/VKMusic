//
//  VKAPIManager.swift
//  VkPlaylist
//
//  Created by Илья Халяпин on 02.05.16.
//  Copyright © 2016 Ilya Khalyapin. All rights reserved.
//

import Foundation
import SwiftyVK

let VKAPIManagerDidAutorizeNotification = "VKAPIManagerDidAutorizeNotification" // Уведомление о том, что авторизация успешно пройдена
let VKAPIManagerDidUnautorizeNotification = "VKAPIManagerDidUnautorizeNotification" // Уведомление о том, что была произведена деавторизация

class VKAPIManager {
    
    static let applicationID = "5443807" // ID приложения
    static let scope: [VK.Scope] = [ // Права приложения https://vk.com/dev/permissions
        .friends, // Друзья пользователя
        .audio, // Аудиозаписи пользователя
        .status, // Статус пользователя
        .groups, // Группы пользователя
        .offline // Доступ к API в любое время (бессрочный токен)
    ]
    
    
    // Авторизация пользователя
    class func autorize() {
        VK.logOut()
        print("SwiftyVK: LogOut")
        
        VK.autorize()
        print("SwiftyVK: Autorize")
    }
    
    // Деавторизация пользователя
    class func logout() {
        VK.logOut()
        print("SwiftyVK: LogOut")
    }
    
    // Авторизован ли пользователь
    class var isAuthorized: Bool {
        return VK.state == .Authorized
    }
    
}