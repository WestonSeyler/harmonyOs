@Component
export struct  MenuWrapperItem {
  build() {
    Row() {
      Image($r('app.media.roast'))
        .width(90)
        .aspectRatio(1)
      Column({ space: 5 }) {
        Text('小份酸汤莜面鱼鱼+肉夹馍套餐')
          .textOverflow({
            overflow: TextOverflow.Ellipsis,
          })
          .maxLines(2)
          .fontWeight(400)
        Text('酸汤莜面鱼鱼，主料：酸汤、莜面 肉夹馍，主料：白皮饼、猪肉')
          .textOverflow({
            overflow: TextOverflow.Ellipsis,
          })
          .maxLines(1)
          .fontSize(12)
          .fontColor('#333')
        Text('点评网友推荐')
          .fontSize(10)
          .backgroundColor('#fff5e2')
          .fontColor('#ff8000')
          .padding({
            top: 2,
            bottom: 2,
            right: 5,
            left: 5
          })
          .borderRadius(2)
        Text() {
          Span('月销售40')
          Span(' ')
          Span('好评度100%')
        }
        .fontSize(12)
        .fontColor('#999')

        Row(){
          Text(){
            Span('¥ ')
              .fontColor('#ff8000')
              .fontSize(10)
            Span('34.23')
              .fontColor('#ff8000')
              .fontWeight(FontWeight.Bold)

          }
          Row(){
            Text('+')
              .fontSize(20)
          }
          .width(20)
          .height(20)
          .justifyContent(FlexAlign.Center)
          .backgroundColor('#ff8000')
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width("100%")

      }
      .layoutWeight(1)
      .padding({ left: 10, right: 10 })
      .alignItems(HorizontalAlign.Start)
    }
    .alignItems(VerticalAlign.Top)
  }
}