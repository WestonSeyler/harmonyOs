@Entry
@Component
export default struct Index {
  @Builder
  MoreBuilder() {
    Row() {
      Text ('查看更多')
        .fontSize (14)
        .fontColor ('#666666')
      Image ($r ('app.media.ic_public_arrow_right'))
        .width (16)
        .fillColor ('#666666')
    }

  }

  build() {
    Column() {
      GridRow({ columns: 2, gutter: 15 }) {
        GridCol({ span: 2 }) {
          Column() {
            Row() {
              Text ('评价（2000+）')
                .layoutWeight (1)
                .fontWeight (600)
              this.MoreBuilder()
            }
            .padding (10)

            Row ()
              .height (100)
          }
          .borderRadius (12)
          .backgroundColor ('#fff')
        }

        GridCol() {
          Column() {
            Row() {
              Text ('推荐')
                .layoutWeight (1)
                .fontWeight (600)
              // TODO
            }
            .padding (10)

            Row ()
              .height (100)
          }
          .borderRadius (12)
          .backgroundColor ('#fff')
        }

        GridCol() {
          Column() {
            Row() {
              Text ('体验')
                .layoutWeight (1)
                .fontWeight (600)
              // TODO
              this.MoreBuilder()

            }
            .padding (10)

            Row ()
              .height (100)
          }
          .borderRadius (12)
          .backgroundColor ('#fff')
        }
      }
    }
    .height ('100%')
    .padding (15)
    .backgroundColor ('#f5f5f5')
  }
}
