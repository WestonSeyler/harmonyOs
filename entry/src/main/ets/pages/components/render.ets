@Entry
@Component
export default struct render{
  @State
  loading:boolean=false

  build() {
    Column({space:20}){
      if(this.loading){
        LoadingProgress()
          .width(100)
          .height(100)
      }else{
        Text('后台数据')
      }
      Button('更新数据')
        .onClick(()=>{
          this.loading=true;
          setTimeout(()=>{
            this.loading=false
          },2000)
        })
    }
    .width('100%')
    .height("100%")
    .justifyContent(FlexAlign.Center)

  }
}
