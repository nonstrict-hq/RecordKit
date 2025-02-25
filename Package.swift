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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.33.0-beta.3.zip",
            checksum: "6f43a8aa2ad6b0d46208f806d43b036e9a3d7c0035fc24450a76ee36d30774a8"
        )
    ]
)
