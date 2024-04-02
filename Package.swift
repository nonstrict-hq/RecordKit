// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "RecordKit",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "RecordKit",
            targets: ["RecordKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordKit",
            url: "https://download.nonstrict.eu/RecordKit.xcframework.zip",
            checksum: "2a15409f5330e2e3d20b1c97640fabe4b54987590eff8e08460942041c6e7c4c")
    ]
)
