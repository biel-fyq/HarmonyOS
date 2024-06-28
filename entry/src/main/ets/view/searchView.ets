import {recommendedDetails} from './recommendedDetails'
@Component
export struct searchView {
  @State simpleList: Array<string> = ['蜈支洲岛', '海湾岛', '大东岛','呀诺达'];
  build() {
    Column() {
      Flex({ direction: FlexDirection.Row, }) {
        TextInput({placeholder:"搜索地点"}).width('85%').height(50)
        Image($r('app.media.square')).width(55).width(55)
      }
      .height(70)
      .width('100%')
      .margin({top:20})
      Flex({ direction: FlexDirection.Row, }) {
        ForEach(this.simpleList, (item: string) => {
              Button(item, { type: ButtonType.Normal, stateEffect: true })
               .margin(5).backgroundColor('white').fontColor('#aaa').borderRadius(8)
        }, (item: string) => item)
      }
      recommendedDetails()
    }
  }
}
