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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.85.0-beta.1.zip",
            checksum: "566628d47ad17e9118a349f93aa45148d06a558fd65b3d75097789161c99bb7f"
        ),
    ]
)
