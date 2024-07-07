
@Component
export default struct Index{
  @Builder
  NavItem(active:boolean,title:string,subTitle?:string){
    Column(){
      Text(){
        Span('点菜')
        if(subTitle){
          Span(' ' + subTitle)
            .fontSize(10)
            .fontColor(active ? '#000' : '#666')
        }
      }.layoutWeight(1)
      .fontColor(active ? '#000' : '#666')
      .fontWeight(active ? FontWeight.Bold : FontWeight.Normal)

      Text()
        .height(1)
        .width(20)
        .margin({ left: 6 })
    }
    .width(73)
    .alignItems(HorizontalAlign.Start)
    // .padding({top:3})

    }



  build(){
    Row(){
      this.NavItem(true, '点菜')
      this.NavItem(false, '评价', '1796')
      this.NavItem(false, '商家')

      Row(){
        Image($r('app.media.startIcon'))
          .width(20)
          .aspectRatio(1)
          .fillColor('#999')
        TextInput()
          .flexGrow(1)
          .height(35) // 设置一个合适的高度
          .padding({ left: 8, right: 8 }) // 添加内边距，提高可读性

      }
      .backgroundColor('#eee')
      .height(20)
      .borderRadius(13)
      .padding({ left: 5, right: 5 })
      .layoutWeight(1)
    }
    // .padding({ left: 15, right: 15 })
    .height(40)
    // .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })

  }
}