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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.89.0.zip",
            checksum: "98bb1290d380719f64e1cdd5ee2c3ef4dc2d36d744e34bdf518bfef8ce1b954f"
        ),
    ]
)
