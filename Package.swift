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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.49.2.zip",
            checksum: "3f15fbcd3783556b05590ca04ae927de8444a89d47e7c25be5b0a76ae0f97b91"
        )
    ]
)
