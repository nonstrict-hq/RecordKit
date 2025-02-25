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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.33.0-beta.1.zip",
            checksum: "9a4578425a42fb14f9aa4705e2ec0ba1f3e23c111f2055cda3edf9758e785b38"
        )
    ]
)
