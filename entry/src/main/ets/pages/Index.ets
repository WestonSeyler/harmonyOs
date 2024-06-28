// index.ets
import router from '@ohos.router';

// 通过getShared接口获取stage共享的LocalStorage实例
let storage = LocalStorage.getShared()

@Entry(storage)
@Component
struct Index {
  // can access LocalStorage instance using
  // @LocalStorageLink/Prop decorated variables
  @LocalStorageLink('PropA') propA: number = 1;

  build() {
    Row() {
      Column() {
        Text(`${this.propA}`)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button("To Page")
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Page/index'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}