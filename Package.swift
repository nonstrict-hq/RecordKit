// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "RecordKit",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "RecordKit", targets: ["RecordKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordKit",
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.46.0-appstore.zip",
            checksum: "161dc8971ae7e502cb5078b1149aab78a6f35dc3cb266fe684fd3f6764c66c91"
        )
    ]
)
