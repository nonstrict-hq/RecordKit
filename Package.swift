// swift-tools-version: 5.10

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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.79.0-beta.2.zip",
            checksum: "c876cb02fdbc70d7c917ccf87623481ecac337ffa39830a37582c6c5047cc3a8"
        )
    ]
)
