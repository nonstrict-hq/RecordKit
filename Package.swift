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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.75.0-beta.1.zip",
            checksum: "54b38dc3325ae40d3bc85f69a040a7d09a1fc30bcdf3981603527c5dc2f15ee4"
        )
    ]
)
