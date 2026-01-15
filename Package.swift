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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.72.1-appstore.zip",
            checksum: "336e02e23d1b4dd33244d7482649351cc0c70a31bb74f108457f6fbce1c8a7f4"
        )
    ]
)
