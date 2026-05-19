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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.88.2.zip",
            checksum: "1b8220e3dd85fdbd3bf5a5b7316c87f2d7338dba19b5b330d8a47dd2c1db4803"
        ),
    ]
)
