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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.82.1.zip",
            checksum: "20e26a2eebf5ad532a8ac3f410d523cc132bef93076ea23bb694c9e95dac2097"
        ),
    ]
)
