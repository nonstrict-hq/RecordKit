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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.15.1.zip",
            checksum: "c26dd6b8a50afb324cfe9367c31ba1cae14d574b73fda75771fb4447d3f56f2f"
        )
    ]
)
