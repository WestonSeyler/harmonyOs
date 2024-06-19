import promptAction from '@ohos.promptAction';

@Entry
@Component
export default struct Index {
  build() {
      Text('演示')
        .width('100%')
        .backgroundColor('red')
        .onAreaChange((oldArea,newArea)=>{
          // console.log(oldArea.width)
          promptAction.showToast({
            //onArea改变尺寸后出发
            //newArea为现在的尺寸
            message:newArea.width.toString()
          })
        })

  }
}