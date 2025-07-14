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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.53.1.zip",
            checksum: "e6ab5bacc5bedb00cdfadfd5c69fc091eb40cb6c5a022219c8eeaf75d2178d97"
        )
    ]
)
