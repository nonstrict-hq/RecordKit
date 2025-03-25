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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.39.0-appstore.zip",
            checksum: "120590b2f2d60f61cdf80f857138931caf834b89b1ea0e3ac7c1c487b95a35f3"
        )
    ]
)
