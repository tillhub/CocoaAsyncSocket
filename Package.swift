// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TillhubCocoaAsyncSocket",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "TillhubCocoaAsyncSocket",
            targets: ["TillhubCocoaAsyncSocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TillhubCocoaAsyncSocket",
            dependencies: [],
            path: "Source/GCD",
            publicHeadersPath: ""),

        .testTarget(name: "SharedObjCTests",
                    dependencies: ["TillhubCocoaAsyncSocket"],
                    path: "Tests/Shared/ObjC"),

        .testTarget(name: "SharedSwiftTests",
                    dependencies: ["TillhubCocoaAsyncSocket"],
                    path: "Tests/Shared/Swift")
    ]
)
