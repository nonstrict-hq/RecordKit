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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.96.0.zip",
            checksum: "aefd2d74fc3bacd7962652063dbe1dbd00d980d8cff931105f76a0e418a75f95"
        ),
    ]
)
