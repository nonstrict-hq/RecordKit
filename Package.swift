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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.76.0.zip",
            checksum: "5fd023325a764a2e78fbeb6ed1fcd0e1d14347606e5ace78a7b17f660fc0e3ea"
        )
    ]
)
