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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.3.3.zip",
            checksum: "ee6584cf2d7044d901f99c7bb808cf3b3b482bd92ef4e10272f1327ea61a805e"
        )
    ]
)
