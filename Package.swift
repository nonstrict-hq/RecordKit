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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0.zip",
            checksum: "8a21093fe6a2c77d845cdf7da27e4d4201a01e398bfe57a55cc218ba65b70b99"
        )
    ]
)
