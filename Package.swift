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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0-beta.4.zip",
            checksum: "6e72a616fa826e8a7aec4cf3bd09e0fa0cad780acffe48dc0e934b254afd9aaf"
        )
    ]
)
