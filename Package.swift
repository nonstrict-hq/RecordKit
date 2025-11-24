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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.64.0.zip",
            checksum: "3eb2fe0a79da703d25ab0119dadbacb235c292c881246c44cadf5a5b4a5ed6c5"
        )
    ]
)
