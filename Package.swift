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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.16.0.zip",
            checksum: "cd591aa676e419012689af4a5f8a26e4dea3542b4189a183b3d4cdc76d2c4bbe"
        )
    ]
)
