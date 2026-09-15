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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.97.0.zip",
            checksum: "bb43bd12b45d39afed43ac8276f2fa32206e07c017511c3c5a227455dd92ccd6"
        ),
    ]
)
