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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.101.0.zip",
            checksum: "31e44197031ad690b0967fecf395059803b57a17db00a5eaca2cc30624560d73"
        ),
    ]
)
