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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.65.1.zip",
            checksum: "8b4b828a3eff0f14a3468f2be1a7af825897a978a7f39f5caf8fde9a149fe837"
        )
    ]
)
