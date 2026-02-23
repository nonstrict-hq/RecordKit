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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.78.0-appstore.zip",
            checksum: "f8b2b986ee132ec33dee05296dae2995158b3d8165e29895ad6cc9ff83669e4e"
        )
    ]
)
