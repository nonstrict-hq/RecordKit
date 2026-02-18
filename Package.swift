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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0-appstore.zip",
            checksum: "50abcc2f6fcd2c1095d3fdbdeef125fca31c2ae2cfa0dce61c62992436eada5e"
        )
    ]
)
