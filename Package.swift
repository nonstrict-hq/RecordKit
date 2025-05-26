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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.48.0.zip",
            checksum: "54db3dd51168de570ca7fe36cac75a16a0f6bdd9182adfc9c6021f9b7d37301b"
        )
    ]
)
