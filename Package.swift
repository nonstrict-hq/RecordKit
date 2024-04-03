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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.3.2-alpha.3.zip",
            checksum: "48cbc6925a54d0bc0f963f8848ccf8a04d99f7a8738f428f771060dea1916f56"
        )
    ]
)
