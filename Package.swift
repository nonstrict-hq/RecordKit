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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.19.0.zip",
            checksum: "f39c5f0ee8f0002665883f3e83cde552b3d211f503edde64c7dfc62aa8fb1d30"
        )
    ]
)
