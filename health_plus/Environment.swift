//
//  Environment.swift
//  health_plus
//
//  Created by Thet Maung on 2/1/19.
//  Copyright © 2019 Thet Maung. All rights reserved.
//

import Foundation

public enum PlistKey {
    case ServerURL
    case ConnectionProtocol
    
    func value() -> String {
        switch self {
        case .ServerURL:
            return "server_url"
        case .ConnectionProtocol:
            return "protocol"
        }
    }
}
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .ServerURL:
            return infoDict[PlistKey.ServerURL.value()] as! String
        case .ConnectionProtocol:
            return infoDict[PlistKey.ConnectionProtocol.value()] as! String
        }
    }
}
