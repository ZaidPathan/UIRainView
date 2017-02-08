# UIRainView

[![CI Status](http://img.shields.io/travis/zaidSA/UIRainView.svg?style=flat)](https://travis-ci.org/zaidSA/UIRainView)
[![Version](https://img.shields.io/cocoapods/v/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)
[![License](https://img.shields.io/cocoapods/l/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)
[![Platform](https://img.shields.io/cocoapods/p/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)

![UIRainViewLogo](https://github.com/ZaidPathan/UIRainView/blob/master/Images/UIRainView_GitHubLogo.png)

## Demo

![UIRainView](https://github.com/ZaidPathan/UIRainView/blob/master/Images/UIRainView.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### 1. CocoaPods

UIRainView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIRainView"
```

### 2. Manual

Add `UIRainView.swift` file into your project.

## Usage

### 1. Import UIRainView in any class you want to use it.

    import UIRainView

### 2.1. Add using XIB or UIStoryboard

- Add UIView to your view.
- Give class name `UIRainView` to that UIView in Identity Inspactor.
- Go to attribute inspactor and give Rain String value (Default is 💧) and Rain fall interval (Default is 5).
- Connect IBOutlet of `UIRainView`
- Start rain by calling : `rainView.rain()`
- Stop rain by calling : `rainView.drizzle()`

### 2.2. Add direcly into the code.

```swift
import UIKit
import UIRainView

class ViewController: UIViewController {

    var rainView:UIRainView?

    override func viewDidLoad() {
        super.viewDidLoad()
        rainView = UIRainView()
        rainView?.frame = view.frame
        view.addSubview(rainView!)

        rainView?.rainString = "💧🎊🎉❤️💝💜💙💚💛🍰"
        rainView?.rainFallInterval = 7
        rainView?.rain()   //Start raining
    }

}
```
To **Stop** raining try following,

```swift
    rainView?.drizzle()
```

## Contribution

Feel free to raise issue and PR accepted to imrove this library.

## Author

ZaidPathan , zaid.pathan@solutionanalysts.com

## License

UIRainView is available under the MIT license. See the LICENSE file for more info.
