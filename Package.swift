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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.77.0-beta.3.zip",
            checksum: "eb36a60336cc2eb0f40a5cb7f2e387965d00088b5bb7f1c90ccd3cdf3abf1838"
        )
    ]
)
