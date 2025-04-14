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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.43.0.zip",
            checksum: "bc95098087888cdddb6096d1208d07dd94476cc35ffbb9a879cd6bb699b6c1ae"
        )
    ]
)
