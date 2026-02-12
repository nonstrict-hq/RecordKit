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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0-beta.2.zip",
            checksum: "3923eb53c447abc879eeae6c6ab6e353734fc316d89a1f6aba982e8e06415d0a"
        )
    ]
)
