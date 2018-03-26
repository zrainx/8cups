#include <Arduino.h>
#include <U8x8lib.h>

int ii;
U8X8_SSD1306_128X32_UNIVISION_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE);   // Adafruit ESP8266/32u4/ARM Boards + FeatherWing OLED


int fsrPin = 0;     // A0 接口
int fsrReading;
void setup(void) {
  u8x8.begin();
  u8x8.setPowerSave(0);
  u8x8.setFont(u8x8_font_chroma48medium8_r);
}
void loop(void) {
  u8x8.clearDisplay();
  fsrReading = analogRead(fsrPin);
  String ss=String("Adc: ")+fsrReading;
  
  u8x8.drawString(0,0, ss.c_str());
  delay(1000);
}
