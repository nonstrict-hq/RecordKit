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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.45.0.zip",
            checksum: "154a22ff5e78870c581ea8c565e8cfdd0109483087c5d8dd4e3227fd31c0a3ff"
        )
    ]
)
