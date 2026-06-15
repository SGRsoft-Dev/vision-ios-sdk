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
            checksum: "ccd7e97264afe9c9ce4a7413f5124812bc9eb89e05bef65b0bde4da83aaf2173"
        )
    ]
)
