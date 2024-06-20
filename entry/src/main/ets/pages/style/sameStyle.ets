// @Styles function sameStyle(){
//   .backgroundColor(Color.Gray)
//   .onClick(()=>{
//     this.count++
//   })
// }


@Entry
@Component
export default struct Index {
  @State
  count: number = 10

  @Styles
  //不需要function 会覆盖全局
  sameStyle(){
    .backgroundColor(Color.Pink)
    .onClick(()=>{
      this.count++
    })

  }
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