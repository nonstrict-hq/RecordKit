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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.48.1.zip",
            checksum: "d135b29acbe7d18c21a26886116f8da9c231dbe11b44bfe5d46f3ee1b4e9d57a"
        )
    ]
)
