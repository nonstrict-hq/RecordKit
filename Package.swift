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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.87.3.zip",
            checksum: "0d64aba90db058908fdf8c3ec08fb61eaf13a25702f4f1a82fbab26744b59d40"
        ),
    ]
)
