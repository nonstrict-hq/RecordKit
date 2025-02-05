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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.30.0-beta.4.zip",
            checksum: "ff337339b0ae9b10363f4f3524472f69cb27d927b0c0db2f46cdffc2168c7eab"
        )
    ]
)
