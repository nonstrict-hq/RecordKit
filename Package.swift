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
            url: "https://download.nonstrict.eu/RecordKit.xcframework.zip",
            checksum: "10e1ee61a8ad37db920407cf7c3d699f3ad331501853c3d3c76ce87465d42ec4")
    ]
)
