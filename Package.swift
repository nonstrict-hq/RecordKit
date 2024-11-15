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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.18.1.zip",
            checksum: "8c35a534bf0d291aa2dae8ca3de49fd1974a6c0544e1312ca894afc677020eb6"
        )
    ]
)
