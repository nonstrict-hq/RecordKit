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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.87.4.zip",
            checksum: "41aa56ee9646e05858e97287b52c83bfd22dfc0ace0ea7215bedba02c41f7f0c"
        ),
    ]
)
