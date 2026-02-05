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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.76.0-appstore.zip",
            checksum: "4027d2f73d4e3430572d0a2350b9ed18aa6a317bb70210b96eb0e680815c7328"
        )
    ]
)
