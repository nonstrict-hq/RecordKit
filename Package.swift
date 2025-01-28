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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.27.0.zip",
            checksum: "adffa322a8ed260b0856e3b0e2f534c6ec84a6d23073e3d5e8ca59efb0812474"
        )
    ]
)
