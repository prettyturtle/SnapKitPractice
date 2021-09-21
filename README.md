#  SnapKit 연습

## SnapKit Installation

- 이번에는 CocoaPods 이 아닌 Swift Package Manager으로 설치했다

- xcode 13으로 업그레이드를 했더니 [File]/[swift package] 에서 add~ 라고 설치할 수 있는 곳이 사라졌는데
- 프로젝트 명을 눌러보면 Info, Build Settings, Package Dependencies가 있는데
- Package Dependencies를 선택하고 + 버튼을 누르면 설치할 수 있다


``` swift
dependencies: [
    .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1"))
]
```

### ex

``` swift
    blueView.snp.makeConstraints { make in
        // make == blueView
        // 여기에 blueView가 가질 제약을 주면됨
        // top(상), leading(좌), trailing(우), bottom(하)
        // 상하좌우 제약에 양수인지 음수인지 잘 고려하자
        make.leading.equalTo(20)
        make.trailing.equalTo(-20)
        make.height.equalTo(100)
        make.top.equalTo(orangeView.snp.bottom).offset(100)
        make.bottom.equalTo(purpleView.snp.top).offset(-30)
    }
```
