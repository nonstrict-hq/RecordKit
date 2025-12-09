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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.69.0.zip",
            checksum: "b3c29af34da61b7107a763f450ba81b49144d5e2ec0b0f9ade27ad58d8e18c4c"
        )
    ]
)
