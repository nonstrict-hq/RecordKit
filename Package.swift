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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.30.0-beta.5.zip",
            checksum: "a0ae3f2830da9f87f9ac562201e50350a417a627955c65cb5b7261ea7c07382f"
        )
    ]
)
