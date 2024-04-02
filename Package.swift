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
            url: "https://download.nonstrict.eu/RecordKitFoo.xcframework.zip",
            checksum: "b5dd938dcae34b0deba975e312b6439e8b8f7aacbf7a77985d1827833695dbf5")
    ]
)
