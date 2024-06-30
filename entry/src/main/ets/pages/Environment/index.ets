// 将设备languageCode存入AppStorage中
Environment.envProp('languageCode', 'en');

@Entry
@Component
export default struct envirment {
  @StorageProp('languageCode') languageCode: string = 'en';

  build() {
    Row() {
      Column() {
        // 输出当前设备的languageCode
        Text(this.languageCode)
      }
    }
  }
}