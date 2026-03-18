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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.80.0-appstore.zip",
            checksum: "bcc0206e8cd0eb26b10e4e98994af422e4acb4a23a1e7cac7c31997c40c2e9b2"
        )
    ]
)
