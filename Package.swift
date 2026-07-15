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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.94.1.zip",
            checksum: "b46f1d38310ec38a7db921bbe2e25135dcedfb70b9313c91d06df4bf68d8f671"
        ),
    ]
)
