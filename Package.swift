// swift-tools-version: 5.9
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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.86.1.zip",
            checksum: "263e2c21e2d893e7baa61cc9cd01fc9978ad8c83c2047416e06cb23d91e4c13e"
        ),
    ]
)
