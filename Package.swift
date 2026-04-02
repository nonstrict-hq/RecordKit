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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.85.0-beta.2.zip",
            checksum: "29585bd3f6946d505bc40ff443d41fc2b8c4f4ad114317b6540a38f303377527"
        ),
    ]
)
