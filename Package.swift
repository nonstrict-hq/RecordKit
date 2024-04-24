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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.3.4.zip",
            checksum: "45f4bd28f9d84b5a6cefe94312a4533c609597f4d8e09e5dfb7e9d6fb64e5c58"
        )
    ]
)
