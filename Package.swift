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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.0-beta.3.zip",
            checksum: "7a704b1c90aee0898ffecd00fc07f548617381ed6e920383cb5220c6dd7219b5"
        )
    ]
)
