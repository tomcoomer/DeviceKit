# DeviceKit
Get Device Info
This can be used to get information about the device, useful when drawing the UI and providing software version specific features.

# Set Up
- Import the DeviceKit.framework to your Xcode Project
- Add ```import DeviceKit``` under the other ```import``` statements
- Start getting information on the device!

# Get Hardware Type
To get the specific hardware type just use the code below:
```
if HardwareType().IS_IPHONE_6() {
            print("iPhone 6")
}
```
To check the device type use this: 
```
if HardwareType().IS_IPHONE() {
            print("Is iPhone")
}
```
or
```
if HardwareType().IS_IPAD() {
            print("Is iPad")
}
```

# Get Software Version

You can get the version number of the current device's software using:
```
let sVers = DeviceSoftware().softwareVerstion()
        print("Software version: \(sVers)")
```

or to check the main version number use this:
```
if DeviceSoftware().IS_IOS_9() {
            print("Is running iOS 9")            
}
```

# Questions
For any questions please visit Smudge.cloud
