@Component
export default struct  Food{
  build(){
   Row(){
     Row(){
       Badge({
         value:'0',
         position:BadgePosition.Right,
         style:{badgeSize:18}
       }){
         Image('https://zqran.gitee.io/images/waimai/cart-2.png')
           .width(47)
           .height(69)
           .position({y:-19})
       }
       .width(50)
       .height(50)
       .margin({ left: 25, right: 10 })
       .onClick(() => {
         // this.showCart = !this.showCart
       })
       Column(){
         Text(){
           Span('¥')
             .fontColor('#FFF')
             .fontSize(12)
           Span('0.00')
             .fontColor('#FFF')
             .fontSize(24)
         }
         Text('预估另需配送费 ¥5')
           .fontSize(12)
           .fontColor('#999')
       }
       .layoutWeight(1)
       .alignItems(HorizontalAlign.Start)

       Text('去结算')
         .backgroundColor('#f8c74e')
         .alignSelf(ItemAlign.Stretch)
         .padding(15)
         .borderRadius({
           topRight: 25,
           bottomRight: 25
         })
     }
     .height(50)
     .layoutWeight(1)
     .backgroundColor('#222426')
     .borderRadius(25)
   }
   .padding(15)
   .height(80)
  }
}