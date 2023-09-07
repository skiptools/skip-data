// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "skip-data",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
    products: [
    .library(name: "SkipData", targets: ["SkipData"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "0.6.56"),
        .package(url: "https://source.skip.tools/skip-sql.git", from: "0.1.4"),
    ],
    targets: [
    .target(name: "SkipData", dependencies: [.product(name: "SkipSQL", package: "skip-sql", condition: .when(platforms: [.macOS]))], plugins: [.plugin(name: "skipstone", package: "skip")]),
    .testTarget(name: "SkipDataTests", dependencies: [
        "SkipData",
        .product(name: "SkipTest", package: "skip")
    ], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
