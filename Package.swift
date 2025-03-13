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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.38.0.zip",
            checksum: "d2ce4a8f2ca1c4d31175c1a47b4a090685e4e2d34d36d1e5a67ba34f64b7f975"
        )
    ]
)
