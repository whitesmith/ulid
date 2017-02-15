# Universally Unique Lexicographically Sortable Identifier

#### Objective-C wrapper of the [C++ library](https://github.com/suyash/ulid)

---

> :warning: **WARNING** :warning: This project is in a _prerelease_ state. There
> is active work going on that will result in interface changes that can/will break
> code while things are finished. Use with caution.

---

### Installation

```ruby
pod 'ULID', :git => 'https://github.com/Whitesmith/ulid.git', :branch => 'master'
```

---

### Usage

```objective-c
#import <ULID/ULID.h>

NSLog(@"%@", [[WSULID ulid] ULIDString]);
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