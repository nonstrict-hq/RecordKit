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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.60.0.zip",
            checksum: "dcaa7daeb7e8d3899a2e517e3a00f27fa735c8b33ad1cebd26878a32090e8102"
        )
    ]
)
