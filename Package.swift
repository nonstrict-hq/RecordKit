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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.34.0.zip",
            checksum: "c2236274bb3e5de36facdf15f8731ca2e1f66ca88cd4dbcbf87921d8d3076043"
        )
    ]
)
