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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.1.zip",
            checksum: "17f9485567ce31f2077ff0d1ac3a1a28db7e6ac44f6efbfe0fcd1b78b8595018"
        )
    ]
)
