//
//  DeviceOrientation.swift
//  DeviceKit
//
//  Created by Tom Coomer on 25/08/2015.
//  Copyright (c) 2015 Tom Coomer. All rights reserved.
//

import Foundation

public class DeviceOrientation {
    
    public init (){
        print("Orientation Class has been initialised")
    }
    
    struct Orientation{
        static let portrait = UIDevice.currentDevice().orientation.isPortrait
        static let landscape = UIDevice.currentDevice().orientation.isLandscape
        static let flat = UIDevice.currentDevice().orientation.isFlat
        
        static let p = UIApplication.sharedApplication().statusBarOrientation.isPortrait
        static let l = UIApplication.sharedApplication().statusBarOrientation.isLandscape
        
//        static let Portrait = UIDeviceOrientation.Portrait
//        static let PortraitUpsideDown = UIDeviceOrientation.PortraitUpsideDown
//        static let LandscapeLeft = UIDeviceOrientation.LandscapeLeft
//        static let LandscapeRight = UIDeviceOrientation.LandscapeRight
//        static let FaceUp = UIDeviceOrientation.FaceUp
//        static let FaceDown = UIDeviceOrientation.FaceDown
//        static let Unknown = UIDeviceOrientation.Unknown
    }
    
    public func Portrait() -> Bool {
        return Orientation.portrait
    }
    public func Landscape() -> Bool {
        return Orientation.landscape
    }
//    public func Flat() -> Bool {
//        return Orientation.flat
//    }
    
    
//    public func IS_IOS_8() -> Bool {
//        return Version.iOS8
//    }
//    
//    public func IS_IOS_9() -> Bool {
//        return Version.iOS9
//    }
//    
//    public func softwareVerstion() -> Float {
//        return Version.SYS_VERSION_FLOAT
//    }
    
    
}