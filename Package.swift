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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.33.0-beta.2.zip",
            checksum: "281b7d719c7c90a58a495fdd155412375463ba40f84efaa0b3082a8b425dbcf4"
        )
    ]
)
