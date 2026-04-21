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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.87.1.zip",
            checksum: "1cb6cb3eac36748eefb7d04799ff54d3ad227499c619bb6e3db6578fbc5e356c"
        ),
    ]
)
