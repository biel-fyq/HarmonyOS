import  {searchView} from  './searchView'
import router from '@ohos.router'
@Component
export struct topView {
  build() {
    Column() {
      // top
      Flex({ direction: FlexDirection.Row }) {
        Column() {
          Row() {
            Text('你好，PC11Q').fontSize(26).fontWeight(600)
              .onClick(() => {
          // 跳转到第二页
          router.pushUrl({ url: 'pages/moment' }).then(() => {
            console.info('Succeeded in jumping to the attractionDetails page.')
            console.log("123456789")

          }).catch((err) => {
            console.log("123456789")
          })
        })
            Image($r('app.media.hand'))
              .width(40)
              .height(40)
              .padding(6)
          }.width('100%')
          Text('开始探索美丽世界!').width('100%').fontColor('#888').fontSize(16)
        }.width('100%')
        Row() {
          Image($r('app.media.person'))
            .width(60)
            .height(60)
            .borderRadius(50)
        }.width('30%').padding({top:10})
      }
      .height(80)
      .width('100%')
      .padding(10)
      searchView()
    }.padding(20).width('100%')

  }
}
