@Entry()
@Component
struct Index2 {
  // can access LocalStorage instance using
  // @LocalStorageLink/Prop decorated variables
  @LocalStorageLink('PropA') propA: number = 1;

  build() {
    Row() {
      Column() {
        Text('11111')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}