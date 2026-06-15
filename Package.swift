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
            url: "https://github.com/SGRsoft-Dev/vision-ios-sdk/releases/download/0.1.3/SGRVision.xcframework.zip",
            checksum: "67d14b82badb41dbe07b697b9360a5b38854490b547cb15ace8b775da6ebc99b"
        )
    ]
)
