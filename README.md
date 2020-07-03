# VPCustomAlertView

[![CI Status](https://img.shields.io/travis/pionerdevel@gmail.com/VPCustomAlertView.svg?style=flat)](https://travis-ci.org/pionerdevel@gmail.com/VPCustomAlertView)
[![Version](https://img.shields.io/cocoapods/v/VPCustomAlertView.svg?style=flat)](https://cocoapods.org/pods/VPCustomAlertView)
[![License](https://img.shields.io/cocoapods/l/VPCustomAlertView.svg?style=flat)](https://cocoapods.org/pods/VPCustomAlertView)
[![Platform](https://img.shields.io/cocoapods/p/VPCustomAlertView.svg?style=flat)](https://cocoapods.org/pods/VPCustomAlertView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
* iOS11

## Installation

VPCustomAlertView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VPCustomAlertView'
```

## Usage

```Swift
import VPCustomAlertView

var customAlertView: VPCustomAlertView!
    
override func viewDidLoad() {
    super.viewDidLoad()

    customAlertView = VPCustomAlertView(parentView: view)
    customAlertView.addTitle(title: "Title")
    customAlertView.addMessage(message: "Message")
}

@IBAction func ShowTaped(_ sender: UIButton) {
    customAlertView.show()
}

@IBAction func HideTspped(_ sender: Any) {
    customAlertView.hide()
}

```

## Author

VladPioner

## License

VPCustomAlertView is available under the MIT license. See the LICENSE file for more info.
