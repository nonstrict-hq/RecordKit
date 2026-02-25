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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.0-beta.4.zip",
            checksum: "6250a6c896f49b7d2d21ad57ef005d8a630abdc545f1edb46182770d848a4353"
        )
    ]
)
