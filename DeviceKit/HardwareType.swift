//
//  HardwareType.swift
//  DeviceKit
//
//  Created by Tom Coomer on 25/08/2015.
//  Copyright (c) 2015 Tom Coomer. All rights reserved.
//

import Foundation


public class HardwareType {
    
    public init (){
        print("Hardware Class has been initialised")
    }
    
    enum UIUserInterfaceIdiom : Int
    {
        case Unspecified
        case Phone
        case Pad
    }
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
   public struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
    }
    
    
    public func IS_IPHONE_4_OR_LESS() -> Bool {
        return DeviceType.IS_IPHONE_4_OR_LESS
    }
    public func IS_IPHONE_5() -> Bool {
        return DeviceType.IS_IPHONE_5
    }
    public func IS_IPHONE_6() -> Bool {
        return DeviceType.IS_IPHONE_6
    }
    public func IS_IPHONE_6P() -> Bool {
        return DeviceType.IS_IPHONE_6P
    }
    public func IS_IPAD() -> Bool {
        return DeviceType.IS_IPAD
    }
    
    
    //Device Type
    public func IS_IPHONE() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    
    
    
//    var titleLabel = UILabel()
    
//    public func drawTitleBar(titleBar:UIView,color:UIColor){
//        println("Drawing TitleBar")
//        titleBar.backgroundColor = color
//        
//        titleLabel.frame = CGRectMake(40, 20, titleBar.frame.width - 80, titleBar.frame.size.height - 20)
//        titleLabel.textAlignment = .Center
//        titleBar.addSubview(titleLabel)
//    }
//    
//    public func titleBarText(title:String, color:UIColor,fontSize:CGFloat, fontWeight:CGFloat) {
//        titleLabel.text = title
//        titleLabel.textColor = color
//        titleLabel.font = UIFont.systemFontOfSize(fontSize, weight: fontWeight)
//    }
//    
//    public func addTitlebarShaddow(titleBar:UIView) {
//        titleBar.layer.shadowColor = UIColor.darkGrayColor().CGColor
//        titleBar.layer.shadowOpacity = 0.6
//        titleBar.layer.shadowOffset = CGSizeMake(4, 2)
//        titleBar.layer.shadowRadius = 5.0
//    }
}

/*
enum UIUserInterfaceIdiom : Int
{
case Unspecified
case Phone
case Pad
}

struct ScreenSize
{
static let SCREEN_WIDTH         = UIScreen.mainScreen().bounds.size.width
static let SCREEN_HEIGHT        = UIScreen.mainScreen().bounds.size.height
static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

struct DeviceType
{
static let IS_IPHONE_4_OR_LESS  = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
static let IS_IPHONE_5          = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
static let IS_IPHONE_6          = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
static let IS_IPHONE_6P         = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
static let IS_IPAD              = UIDevice.currentDevice().userInterfaceIdiom == .Pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
}
*/
