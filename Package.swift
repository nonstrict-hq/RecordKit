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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.85.0-beta.4.zip",
            checksum: "cf918d21549d7536bca82a567485fa424d45c283713fe795dc98bd3d343c32a4"
        ),
    ]
)
