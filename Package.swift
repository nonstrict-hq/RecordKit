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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.48.2.zip",
            checksum: "7e7ab462e48488f9a1851caa8f0dd119fd6f2886f8aae1aa98cd77405ab9f4e4"
        )
    ]
)
