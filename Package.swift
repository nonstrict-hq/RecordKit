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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-e1999a3972a86f8cb3ae82249680d4e05e415989ab31d6a71cc3fafe50ad5a6d.zip",
            checksum: "a610bd31ad776c67d1e815a2eda6c44487b0f98e9073e993265f021536ba5090"
        )
    ]
)
