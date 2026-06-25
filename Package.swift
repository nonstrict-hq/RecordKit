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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.91.1.zip",
            checksum: "6533432f57d7dc17934a6ea9a14344a4f966dbbce2f4c66ab8c4ed69794758ab"
        ),
    ]
)
