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
            url: "https://github.com/SGRsoft-Dev/vision-ios-sdk/releases/download/0.1.0/SGRVision.xcframework.zip",
            checksum: "f7d58608dabf7f5cfd1e411a6eb07cc74a0c8be3655cb6708b35f39902d44a4c"
        )
    ]
)
