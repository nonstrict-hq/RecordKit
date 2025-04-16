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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.44.0-appstore.zip",
            checksum: "5f1e8ad5e58dded710cc07e3b460a4a6395ff640334637a0f204719ebc365692"
        )
    ]
)
