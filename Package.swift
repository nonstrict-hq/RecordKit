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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.39.0.zip",
            checksum: "094c303e76ac5e34449e5daf8cf35f7596ebf82ad9bf8d501e3b1f01a24041c3"
        )
    ]
)
