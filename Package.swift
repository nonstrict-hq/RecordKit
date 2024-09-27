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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.12.1.zip",
            checksum: "e7ff12ced16e1f86853cb3dfe29fc8e4cf2135aa9f42bf4fe27c6e5d846b4402"
        )
    ]
)
