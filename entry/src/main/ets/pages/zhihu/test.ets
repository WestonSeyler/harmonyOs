@Entry
@Component
export default struct Index {
  build() {
    Column(){
      // 导航
      // Row(){
      //   Row(){
      //     Image($r('app.media.icon'))
      //       .width(16)
      //       .aspectRatio(1)
      //     // svg 图标可以使用填充颜色
      //     // .fillColor('red')
      //   }
      //   .width(24)
      //   .aspectRatio(1)
      //   .backgroundColor('#f5f5f5')
      //   .borderRadius(12)
      //   .justifyContent(FlexAlign.Center)
      //   .margin({ left: 16 })
      //
      //   Text('评论回复')
      //     .layoutWeight(1)
      //     .textAlign(TextAlign.Center)
      //     .padding({ right: 40 })
      // }
      // .height(40)
      // .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })
      // 评论
      Row(){
        Image($r('app.media.ic_user_portrait'))
          .width(33)
          .margin({ top: 10 })
          .aspectRatio(1)
          .borderRadius(16)
        Column({ space: 5 }){
          Text('周杰伦')
            .width('100%')
            .fontWeight(FontWeight.Bold)
            .fontSize(15)
          Text('大理石能雕刻出肌肉和皮肤的质感，那个年代的工匠好牛啊')
            .width('100%')
          Row(){
            Text('10-21 · IP属地北京')
              .fontSize(12)
              .fontColor('#c3c4c5')
            Row({ space: 4 }){
              Image($r('app.media.ic_public_favor'))
                .width(14)
                .aspectRatio(1)
                .fillColor(Color.Red)
              Text('100')
                .fontSize(12)
                .fontColor('#c3c4c5')
            }
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .layoutWeight(1)
        .padding({ left: 10 })
      }
      .padding(15)
      .alignItems(VerticalAlign.Top)
    }
  }
}