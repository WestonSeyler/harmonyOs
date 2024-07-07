import { MenuWrapperItem } from './MenuWrapperItem'
@Component
export default struct  MenuWrapper{

  list:string[]=['一人套餐', '特色烧烤', '杂粮主食']
  @State
  activeIndex:number=0;
  build(){
   Row(){
     Column(){
       ForEach(this.list,(item:string,index:number)=>{
         Text(item)
           .height(50)
           .width('100%')
           .textAlign(TextAlign.Center)
           .fontSize(14)
           .backgroundColor(this.activeIndex === index ? '#fff' : '#f5f5f5')
           .onClick(()=>{
             this.activeIndex=index
           })

       })
     }
     .width(90)

     List(){
       ListItem(){
         MenuWrapperItem()
       }
     }
     .layoutWeight(1)
     .height("100%")
     .backgroundColor('#fff')
   }
   .layoutWeight(1)
   .alignItems(VerticalAlign.Top)
   .backgroundColor('#f5f5f5')

  }
}