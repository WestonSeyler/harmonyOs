// xxx.ets
let MTop:Record<string,number> = { 'top': 50 }

@Entry
@Component
export default struct StackExample {
  build() {
    Column(){
      Stack({}) {
        Column(){}.width('90%').height('100%').backgroundColor('#ff58b87c')
        Text('text').width('60%').height('60%').backgroundColor('#ffc3f6aa')
        Button('button').width('30%').height('30%').backgroundColor('#ff8ff3eb').fontColor('#000')
      }.width('100%').height(150).margin(MTop)
    }
  }
}