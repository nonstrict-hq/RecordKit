// swift-tools-version: 5.9
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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.100.0.zip",
            checksum: "07c1646c9f3b3333d1e3afadc95960395f57225a9ec33cbc9eed29646af07ae6"
        ),
    ]
)
