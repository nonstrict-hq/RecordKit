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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.30.0-beta.3.zip",
            checksum: "32bc4ba3540f838eaac1225d4741046e0c6db3ad1639340925b46bdb99e41f46"
        )
    ]
)
