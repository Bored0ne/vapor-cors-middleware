import PackageDescription

let package = Package(
    name: "vapor-cors-middleware",
    dependencies: [
      .Package(url: "https://github.com/vapor/vapor.git",
        majorVersion: 0,
        minor: 15)
    ]
)
