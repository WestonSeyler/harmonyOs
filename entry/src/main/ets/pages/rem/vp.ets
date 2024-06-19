import promptAction from '@ohos.promptAction';

@Entry
@Component
export default struct Index {
  // build() {
  //     Text('演示')
  //       .width('100%')
  //       .backgroundColor('red')
  //       .onAreaChange((oldArea,newArea)=>{
  //         // console.log(oldArea.width)
  //         promptAction.showToast({
  //           //onArea改变尺寸后出发
  //           //newArea为现在的尺寸
  //           message:newArea.width.toString()
  //         })
  //       })
  //
  // }
  // 可以理解成CSS的 flex: 1
  build(){
    Row(){
      Text('left')
        .layoutWeight(1)
        .backgroundColor('red')
      Text('right')
        .layoutWeight(2)
        .backgroundColor('green')
    }
    .width('100%')
  }
  // 设置元素宽高比 aspectRatio
  // build(){
  //   Text('left')
  //     .width('50%')
  //     //宽高比例
  //     .aspectRatio(1)
  //     .backgroundColor('red')
  // }
}