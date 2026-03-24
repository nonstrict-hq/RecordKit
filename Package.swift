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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.1.zip",
            checksum: "4459ce8fd85ab9a4dd8a6a71adca16209b5c001b27abc417e4dd1527f7d64e5d"
        ),
    ]
)
