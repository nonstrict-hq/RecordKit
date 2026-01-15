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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.72.1.zip",
            checksum: "d4fd869ed153cc967aac5c1ef0e1a32ea88a180873c8b97a18db8abc22bcbf1d"
        )
    ]
)
