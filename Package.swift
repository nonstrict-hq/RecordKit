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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.93.0.zip",
            checksum: "12e2c024bebf2082fbe202cb01ecef84e05ae0d7041e4abbbbe8d031cbd3a79e"
        ),
    ]
)
