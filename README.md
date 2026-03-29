# skip-data

Placeholder for future SkipData module for [Skip](https://skip.dev) apps.


## Setup

To include this framework in your project, add the following
dependency to your `Package.swift` file:

```swift
let package = Package(
    name: "my-package",
    products: [
        .library(name: "MyProduct", targets: ["MyTarget"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.dev/skip-data.git", "0.0.0"..<"2.0.0"),
    ],
    targets: [
        .target(name: "MyTarget", dependencies: [
            .product(name: "SkipData", package: "skip-data")
        ])
    ]
)
```


## License

This software is licensed under the 
[Mozilla Public License 2.0](https://www.mozilla.org/MPL/).
