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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.5.0.zip",
            checksum: "dd6d0b492c3f059d7e17d4aa35e1f23c4e3e0147a06483285bf92c335298fd1d"
        )
    ]
)
