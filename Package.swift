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
            url: "https://github.com/SGRsoft-Dev/vision-ios-sdk/releases/download/0.1.5/SGRVision.xcframework.zip",
            checksum: "fa0c11966d4644f5840326581fbee868f57794681486bd1406e49cf462d5f00e"
        )
    ]
)
