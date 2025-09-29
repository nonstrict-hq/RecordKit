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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.57.0.zip",
            checksum: "0ed21d0058b7b828f8efe0c79276290edd7cf3bf3c101b1487ed32a2726ecd67"
        )
    ]
)
