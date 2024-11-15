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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.18.0.zip",
            checksum: "ad2b8435ebb69284be99e22e98ebdb990d3bd2967d8b1863afe6f1c71305ec25"
        )
    ]
)
