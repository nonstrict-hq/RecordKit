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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.40.0.zip",
            checksum: "02dde458d3454c5ac92e11bc97e03c61f00c7c3126fa2daac49bbce3b8b1d5f5"
        )
    ]
)
