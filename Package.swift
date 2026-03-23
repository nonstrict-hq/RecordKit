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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.1-beta.1.zip",
            checksum: "ad7a3e280d590e0aa58278cda8b0fc52728a9eff270fad4246b85b8ddbd42c6a"
        ),
    ]
)
