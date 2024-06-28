@Entry
@Component
struct Index {
  build() {
    Column() {
      Flex({ direction: FlexDirection.Row }) {
        Column() {
          Row() {
            Text('你好，PCQ').fontSize(28).fontWeight(600)
            Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641')
              .width(50)
              .height(50)
              .padding(6)
          }.width('100%')
          Text('开始探索美丽世界!').width('100%').fontColor('#888').fontSize(20)
        }.width('100%')
        Row() {
          Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641')
            .width(70)
            .height(70)

            .borderRadius(50)
        }.width('30%').padding({top:20})
      }
      .height(80)
      .width('100%')
      .padding(10)
    }.padding(20).width('100%')
  }
}
