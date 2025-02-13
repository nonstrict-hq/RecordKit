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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.31.0-beta.1.zip",
            checksum: "46749f8fc0caeaa446177c3d7464ec46868a797337cfd4eca0a3f23e0da1e580"
        )
    ]
)
