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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.1.zip",
            checksum: "b5d46dcea38af0da7c10c496c8af7b629d79b72fc39d8e30aa3ce70d5144109d"
        )
    ]
)
