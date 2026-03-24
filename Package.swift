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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.82.0.zip",
            checksum: "9000dd9172c48eaf48f29bf82f404cb428255a5ebdcacaa1e9d8111397fe3a0c"
        ),
    ]
)
