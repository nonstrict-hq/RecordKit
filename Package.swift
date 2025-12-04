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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.67.0.zip",
            checksum: "ccb502ac6eef4b35e6356be4506d6d2168fadf46afd5d78f5f6299ff55a8d49a"
        )
    ]
)
