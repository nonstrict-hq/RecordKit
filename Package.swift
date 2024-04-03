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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.3.2-alpha.6.zip",
            checksum: "1d41bb6192823a8965025dcd12cf3f22dd17a0d16e6476911cd3007a614d30cd"
        )
    ]
)
