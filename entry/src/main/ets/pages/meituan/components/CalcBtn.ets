@Component
export  struct  CalcBtn{

  icon: Resource|null=null

  plain?: boolean=false
  build() {
    Row(){
      Image(this.icon)
        .width(10)
        .aspectRatio(1)
    }
    .width(16)
    .aspectRatio(1)
    .backgroundColor(this.plain ? '#fff' : '#f8c74e')
    .border(this.plain?{width:0.5,color:"#f8c74e"}:{})
    .justifyContent(FlexAlign.Center)
  }

}
