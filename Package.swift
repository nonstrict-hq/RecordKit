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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.75.0-beta.3.zip",
            checksum: "2df6f947d582cb580c460b1a451bd2c315e5ed3e11ccc75aa9eeb16933e9766d"
        )
    ]
)
