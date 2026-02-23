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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.0-beta.1.zip",
            checksum: "7213ef25b1be773a7206fdb484ca04d60ca634ea342caf5070621ee2eb13ccdf"
        )
    ]
)
