// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "2019-New-Year-Event-Web",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        
        // Leaf
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        
        // HTTP
        .package(url: "https://github.com/vapor/http.git", from: "3.0.0"),
        
        // Fluent (PostgreSQL)
        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0")
        
        
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentPostgreSQL", "Vapor", "Leaf", "HTTP"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

