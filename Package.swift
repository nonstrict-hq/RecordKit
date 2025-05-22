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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.47.1.zip",
            checksum: "c6170c5b301f76327ce578ddb465aa1814dfe3f0db1dc7543208afd84f31ed7b"
        )
    ]
)
