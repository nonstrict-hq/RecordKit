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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.5.1.zip",
            checksum: "1c3bb389b2bffce88727880872b39c55565c78a17b9dd6f3fbb6c4f57a8816d8"
        )
    ]
)
