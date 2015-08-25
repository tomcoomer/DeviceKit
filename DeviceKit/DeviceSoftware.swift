//
//  DeviceSoftware.swift
//  DeviceKit
//
//  Created by Tom Coomer on 25/08/2015.
//  Copyright (c) 2015 Tom Coomer. All rights reserved.
//

import Foundation

public class DeviceSoftware {
    
    public init (){
        println("Hardware Class has been initialised")
    }
    
    struct Version{
        static let SYS_VERSION_FLOAT = (UIDevice.currentDevice().systemVersion as NSString).floatValue
        static let iOS7 = (Version.SYS_VERSION_FLOAT < 8.0 && Version.SYS_VERSION_FLOAT >= 7.0)
        static let iOS8 = (Version.SYS_VERSION_FLOAT >= 8.0 && Version.SYS_VERSION_FLOAT < 9.0)
        static let iOS9 = (Version.SYS_VERSION_FLOAT >= 9.0 && Version.SYS_VERSION_FLOAT < 10.0)
    }
    
    public func IS_IOS_7() -> Bool {
        return Version.iOS7
    }
    
    public func IS_IOS_8() -> Bool {
        return Version.iOS8
    }
    
    public func IS_IOS_9() -> Bool {
        return Version.iOS9
    }
    
    public func softwareVerstion() -> Float {
        return Version.SYS_VERSION_FLOAT
    }
    

}