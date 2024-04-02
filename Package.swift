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
            url: "https://download.nonstrict.eu/RecordKitBar.xcframework.zip",
            checksum: "a610bd31ad776c67d1e815a2eda6c44487b0f98e9073e993265f021536ba5090")
    ]
)
