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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.92.0.zip",
            checksum: "b1b3f531d24d1ad4f752f8f751d6dce4ea95f91dff75c874f38478951b606b44"
        ),
    ]
)
