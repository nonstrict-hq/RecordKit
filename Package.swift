// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "RecordKit",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "RecordKit",
            targets: ["RecordKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordKit",
            url: "https://download.nonstrict.eu/RecordKit.xcframework.zip?1328",
            checksum: "c19ec9a69455c91c291d0c1afdb5e5d280ee0f98dbe72166a5a2630efadbdedc")
    ]
)
