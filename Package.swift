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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.3.2-alpha.7.zip",
            checksum: "ed80fd1c474658eb8e3d3da2bbf11b24455d20e742c482c10c240e281c8acd9c"
        )
    ]
)
