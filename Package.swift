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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.104.0.zip",
            checksum: "37f41ca0f1c5204c1c7a1c3d2a3b10db2ddbca3b45f1d6fa01c93e20c9b7d8ae"
        ),
    ]
)
