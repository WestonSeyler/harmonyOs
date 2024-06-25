class ToolBarItem {
  defaultIcon: string | Resource= $r('app.media.ic_public_home')
  activeIcon: string | Resource= $r('app.media.ic_public_home')
  label: string=''
}

@Entry
@Component
export default struct  home{
  @State
  activeIndex:number=0;
  toolBars: ToolBarItem[]=[
    { defaultIcon: $r('app.media.ic_public_home'), activeIcon: $r('app.media.ic_public_home'), label: '首页' },
    { defaultIcon: $r('app.media.ic_public_folder'), activeIcon: $r('app.media.ic_public_folder'), label: '项目' },
    { defaultIcon: $r('app.media.ic_public_contacts'), activeIcon: $r('app.media.ic_public_contacts'), label: '面经' },
    { defaultIcon: $r('app.media.ic_public_contacts'), activeIcon: $r('app.media.ic_public_contacts'), label: '我的' }
  ]

  @Builder
  TabBarBuilder(item:ToolBarItem){
      Column(){
        Image(item.defaultIcon)
          .width(20)
          .aspectRatio(1)
          .margin({bottom:10})
        Text(item.label)
          .fontSize(12)
          .margin({ top: 4 })
          .lineHeight(12)
      }
  }


  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.toolBars,(item:ToolBarItem,index:number)=>{
          TabContent(){
              Text(index.toString())
          }
          .tabBar(this.TabBarBuilder(item))

      })
    }
  }
}