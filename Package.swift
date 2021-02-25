let package = Package(
  name: "RxWrapper",
  products: [
    .library(name: "Rx", targets: ["Rx"]),
    .library(name: "RxTesting", targets: ["RxTesting"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/ReactiveX/RxSwift.git",
      .upToNextMajor(from: "5.0.0")
    )
  ],
  targets: [
    .target(
      name: "Rx",
      dependencies: ["RxSwift" , "RxCocoa", "RxRelay"]
    ),
    .target(
      name: "RxTesting",
      dependencies: ["RxTest", "RxBlocking"]
    )
  ]
)
