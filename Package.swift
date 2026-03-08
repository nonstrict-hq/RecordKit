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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.2.zip",
            checksum: "6d0f63e1e8ab28f38d8a7f6bed8a1ad7e0a8634c2236d5fa584af7c53d94ca0f"
        )
    ]
)
