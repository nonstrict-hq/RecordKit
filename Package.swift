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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.66.0.zip",
            checksum: "960cd5e8e660a85bc42ec716e37cf020e57ce8865d4eb9bab7d44a69ddfc8910"
        )
    ]
)
