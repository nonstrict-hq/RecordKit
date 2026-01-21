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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.73.0.zip",
            checksum: "b2342a40a563e90e0b3155d5ec4a046c54ff6c05fd77efff7cb2f9b453edfdd5"
        )
    ]
)
