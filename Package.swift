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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.92.1.zip",
            checksum: "339360924f3ea441d9242e9d8ae109cb9b9822f8792f69faf255528ed5fb6f4a"
        ),
    ]
)
