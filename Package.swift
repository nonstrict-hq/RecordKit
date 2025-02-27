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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.33.0.zip",
            checksum: "67bf00b94e825cbf95ac8afd52c0b8e53e7c7b93b5583041a62d415fea2115ff"
        )
    ]
)
