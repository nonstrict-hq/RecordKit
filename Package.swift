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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.11.0.zip",
            checksum: "5f65fbb9874b002562c0baf3f94e4c2582f8d809ccde62fc4607f6d0f55a1f23"
        )
    ]
)
