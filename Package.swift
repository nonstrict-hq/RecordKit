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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.102.0.zip",
            checksum: "ddb2a48f7602f8875dbe616aebbaeab6e2f8ab236dc2094917f8a05d18c90318"
        ),
    ]
)
