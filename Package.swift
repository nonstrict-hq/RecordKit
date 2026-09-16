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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.97.1.zip",
            checksum: "762e7edbce42c17f6349cc1cee69ef661e22b69ebd929db11d3cae9c77b3c243"
        ),
    ]
)
