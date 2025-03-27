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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.41.0.zip",
            checksum: "b1c1a870742b9c70e43a4feddb1b5e32ecb6c19c61025ae128ef81f7ced78afc"
        )
    ]
)
