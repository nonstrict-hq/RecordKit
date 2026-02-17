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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0-beta.5.zip",
            checksum: "47f00396068533c84718c6865cd6cbcef45fb7159fd774b0e7df3e98493bc111"
        )
    ]
)
