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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.5.zip",
            checksum: "84e16fc864d9d6a34c7aceac5e9a95a71f35de8b9fa45872e799c11552db3aae"
        ),
    ]
)
