// swift-tools-version: 5.9
// SGR Vision SDK — iOS / macOS (Metal) real-time video enhancement.
// Binary distribution (XCFramework). Source mirrors the web SDK @sgrsoft/vision-sdk.
import PackageDescription

let package = Package(
    name: "SGRVision",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "SGRVision", targets: ["SGRVision"])
    ],
    targets: [
        .binaryTarget(
            name: "SGRVision",
            url: "https://github.com/SGRsoft-Dev/vision-ios-sdk/releases/download/0.1.6/SGRVision.xcframework.zip",
            checksum: "e6c8bb6d1a62ed1fb44fb94293100c7fe9589f6dfe478d51ebb1f6db85153cf6"
        )
    ]
)
