@Extend(Text) function myClick(color:string,cb:() => void){
  .backgroundColor(color)
  .width(100)
  .height(50)
  .textAlign(TextAlign.Center)
  .borderRadius(25)
  .onClick(()=>cb())
}


@Entry
@Component
export default struct  Index{
  @State
  color:string='red'

  build(){
    Column(){
      Text('1111')
        .myClick(this.color,()=>{
          this.color='#069'
        })
        .margin({bottom:20})
      Text('1111')
        .myClick(this.color,()=>{
          this.color='#CCC'
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)


  }

}