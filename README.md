# Quick Action

## This is an example project for iOS home screen quick action funcitonality

Read the documentation for details explanation. [Link](https://developer.apple.com/documentation/uikit/menus_and_shortcuts/add_home_screen_quick_actions).
For the keys used in info.plist, read [this](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/iPhoneOSKeys.html#//apple_ref/doc/uid/TP40009252-SW36) documentaion.


## Setup Process
1. Add quick action options to `info.plist`
    1. `UIApplicationShortcutItemIconSymbolName` for sf symbol. Three types of images can used for the actions. see the first apple documentaion link for details.
    2. `UIApplicationShortcutItemSubtitle` for subtitle
    3. `UIApplicationShortcutItemTitle` for title
    4. `UIApplicationShortcutItemType` is the identifier for the action
2. catch UIApplicationShortcutItem from SceneDelegate
  1. `performActionFor` for when app is already running
  2. `willConnectTo` for when app is being launched by the quick action
