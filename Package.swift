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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.36.0.zip",
            checksum: "0510c3a4d4793d1b72cd88720fb2d6f9c9b856cb33aceb6aa94c0b3b402c7106"
        )
    ]
)
