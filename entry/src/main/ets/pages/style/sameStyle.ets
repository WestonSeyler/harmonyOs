@Styles function sameStyle() {
  .backgroundColor(Color.Green)
  .onClick(() => {
    this.count++
  })
}

@Entry
@Component
struct Index {
  @State
  count: number = 10

  build() {
    Column() {
      Text(this.count.toString())
        .width(100)
        .height(50)
        .margin({ bottom: 10 })
        .textAlign(TextAlign.Center)
        .sameStyle()

      Button('+1')
        .sameStyle()
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}