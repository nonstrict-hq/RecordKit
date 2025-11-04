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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.62.0.zip",
            checksum: "37db8de678f8decdf7e904c38cde342a4984dd028affa7ff1173ce15df30783c"
        )
    ]
)
