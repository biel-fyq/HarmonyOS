
@Entry
@Component
struct moment {
  @State travelImgs : any = ['https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641','https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641','https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641','https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641']
  @State trvalList:any=[
    {
      "a":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "b":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "c":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641'
    },
    {
      "a":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "b":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "c":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641'
    },
    {
      "a":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "b":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641',
      "c":'https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641'
    }
  ]
  build() {
    Column(){
      Text('旅拍瞬间').fontSize(26).fontWeight(600).width('100%')
      Flex({
        direction: FlexDirection.Row,
      }){
        ForEach(this.travelImgs, (item, index: number) => {
          Column(){
            Image(item)
              .width(50)
              .height(50)
              .borderRadius(50)
          }.width('85%')
        }, item => JSON.stringify(item))
      }.margin({top:20})

      Column(){
        Flex({ direction: FlexDirection.Row }){
          Column(){
            Text('公告：海南岛七日达人游开始报名').width('80%').fontColor('#aaa').margin({top:20})
            Text('查看详情 —>').fontColor('blue').width('80%').lineHeight(30)
          }.width('70%')
          Column(){
            Image('https://inews.gtimg.com/om_bt/OGlQWfsaAoKkuCcMZ2o9IVEPqd-72DQy5EAN02XBHUwfYAA/641')
              .width(45)
              .height(45)
              .borderRadius(50)
          }.width('20%').margin({top:30})
        }
      }.width('100%').backgroundColor('#eee').height(120).margin({ top:30, })

      Text('达人旅记').fontSize(26).fontWeight(600).width('100%').margin({ top:30, })

    // 图片列表
      List(){
        ForEach(this.trvalList,(item,index:Number)=>{
          ListItem(){
            Row(){
              Column(){
                Image(item.a)
                  .width('100%')
                  .height(250)
                  .borderRadius(15)
              }.width('40%')
              Column(){
                Image(item.b)
                  .width('90%')
                  .borderRadius(5)
                  .padding(10)
                Image(item.c)
                  .width('90%')
                  .borderRadius(5)
                  .padding(10)
              }.width('60%')
            }.width('100%')
          }
        })
      }

    }.width('85%').margin({ top:30,left:30 })



  }
}