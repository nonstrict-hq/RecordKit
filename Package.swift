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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.4.zip",
            checksum: "d03ac7760459fbb3cb71e62c2658597cf1197a016e495dc1b420dece0742be42"
        ),
    ]
)
