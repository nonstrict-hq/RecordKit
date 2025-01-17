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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.25.0.zip",
            checksum: "e9531adda2ef363e419d2a06484851f661f6d1fcbb4d09a02ad12c986a0e6c82"
        )
    ]
)
