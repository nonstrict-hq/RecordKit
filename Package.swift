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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.3.zip",
            checksum: "5767b426b876a12c9a477d099d6406719c528de46edb3b77b09973e762fbc86a"
        ),
    ]
)
