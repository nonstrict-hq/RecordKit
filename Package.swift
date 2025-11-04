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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.61.0.zip",
            checksum: "7e1758d691e3bdc016d28af2aabe070201e4608b9bca7d7b401f10b34bf8d1c7"
        )
    ]
)
