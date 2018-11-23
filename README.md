# Universally Unique Lexicographically Sortable Identifier

[![Build Status](https://app.bitrise.io/app/4f9203939dec3320/status.svg?token=l2TYi3Y18mU3JgWkGI7AhQ&branch=master)](https://app.bitrise.io/app/4f9203939dec3320)

#### Objective-C wrapper of the [C++ library](https://github.com/suyash/ulid)

### Usage

**Objective-C**

```objective-c
#import <ULID/ULID.h>

NSLog(@"%@", [[ULID new] ulidString]);
```

**Swift:**

```swift
import ULID

print(ULID().ulidString)
```

## Specification

Below is the current specification of ULID as implemented in this repository.

*Note: the binary format has not been implemented.*

```
 01AN4Z07BY      79KA1307SR9X4MV3

|----------|    |----------------|
 Timestamp          Randomness
   48bits             80bits
```

## Installation

#### <img src="https://cloud.githubusercontent.com/assets/432536/5252404/443d64f4-7952-11e4-9d26-fc5cc664cb61.png" width="24" height="24"> [Carthage]

[Carthage]: https://github.com/Carthage/Carthage

To install it, simply add the following line to your **Cartfile**:

```ruby
github "whitesmith/ulid"
```

Then run `carthage update`.

Follow the current instructions in [Carthage's README][carthage-installation]
for up to date installation instructions.

[carthage-installation]: https://github.com/Carthage/Carthage#adding-frameworks-to-an-application

#### <img src="https://raw.githubusercontent.com/ricardopereira/resources/master/img/cocoapods.png" width="24" height="24"> [CocoaPods]

[CocoaPods]: http://cocoapods.org

To install it, simply add the following line to your **Podfile**:

```ruby
pod 'ULID'
```

Then run `pod install` with CocoaPods 1.0 or newer.

# Contributing

The best way to contribute is by submitting a pull request. We'll do our best to respond to your patch as soon as possible. You can also submit a [new GitHub issue](https://github.com/whitesmith/ulid/issues/new) if you find bugs or have questions.

![Whitesmith](http://i.imgur.com/Si2l3kd.png)
