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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.55.0.zip",
            checksum: "13d8a3fa0da10bc1bc17de093c7c00d08fafc84996ace2f4865378f23043f3e9"
        )
    ]
)
