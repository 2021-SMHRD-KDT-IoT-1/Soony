# Soony
웹, 아두이노 활용 스마트 유모차

아두이노 - 지문, 마그네틱, 압력, 브레이크 코드



#include <ESP8266WiFi.h>

#include <Adafruit_Fingerprint.h>

#include <Servo.h>


const char* ssid     = "glory";

const char* password = "12345678";//와이파이



const char* host = "192.168.137.1"; // ESP-01 모듈이 접속할 대상 서버 IP

const char* streamId   = "....................";

const char* privateKey = "....................";

String cmd = "";

const byte melodyPin = 5;

const byte swPin = 16;



String sendData = "";



SoftwareSerial mySerial(4, 14);

Servo sv8;

Servo sv9;



//fingerPrint

#if (defined(__AVR__) || defined(ESP8266)) && !defined(__AVR_ATmega2560__)

// For UNO and others without hardware serial, we must use software serial...

// pin #2 is IN from sensor (GREEN wire)

// pin #3 is OUT from arduino  (WHITE wire)

// Set up the serial port to use softwareserial..

#else

// On Leonardo/M0/etc, others with hardware serial, use hardware serial!

// #0 is green wire, #1 is white

#define mySerial Serial1

#endif



Adafruit_Fingerprint finger = Adafruit_Fingerprint(&mySerial);





const int moterPin1 = 12;

const int moterPin2 = 13;




void setup()

{

Serial.begin(9600);



sv8.attach(moterPin1);

sv9.attach(moterPin2);



pinMode(swPin, INPUT);

pinMode(melodyPin, OUTPUT);

delay(100);



Serial.println();

Serial.println();

Serial.println("Connecting to ");

Serial.println(ssid);



WiFi.begin(ssid, password);

delay(100);

while (WiFi.status() != WL_CONNECTED) {

delay(100);

Serial.println(".");

}


Serial.println("");

Serial.println("WiFi connected");

Serial.println("IP address: ");

Serial.println(WiFi.localIP());





  //fingerPrint

while (!Serial);  // For Yun/Leo/Micro/Zero/...

delay(100);

Serial.println("\n\nAdafruit finger detect test");



// set the data rate for the sensor serial port

finger.begin(57600);

delay(5);

if (finger.verifyPassword()) {

Serial.println("Found fingerprint sensor!");

} else {

Serial.println("Did not find fingerprint sensor :(");

while (1) {

delay(1);

}
  }




Serial.println(F("Reading sensor parameters"));

finger.getParameters();

Serial.print(F("Status: 0x")); Serial.println(finger.status_reg, HEX);
  Serial.print(F("Sys ID: 0x")); Serial.println(finger.system_id, HEX);

Serial.print(F("Capacity: ")); Serial.println(finger.capacity);

Serial.print(F("Security level: ")); Serial.println(finger.security_level);

Serial.print(F("Device address: ")); Serial.println(finger.device_addr, HEX);

Serial.print(F("Packet len: ")); Serial.println(finger.packet_len);

Serial.print(F("Baud rate: ")); Serial.println(finger.baud_rate);




finger.getTemplateCount();


if (finger.templateCount == 0) {

Serial.print("Sensor doesn't contain any fingerprint data. Please run the 'enroll' example.");

}

else {

Serial.println("Waiting for valid finger...");

Serial.print("Sensor contains "); Serial.print(finger.templateCount); Serial.println(" templates");

}

}

boolean state = false;

void loop()                     // run over and over again

{


//wifimagnetic



//fingerPrint

getFingerprintID();

if (state == true) {

Serial.println("state == true");





// 압력센서 코드

int analogSensorValue = analogRead(A0);

if (analogSensorValue > 300) {

sv8.write(175);

sv9.write(175);





} else {
      state = false;

sv8.write(5);

sv9.write(5);

}




// 마그네틱 코드

int digitalSensorValue = digitalRead(16);

if (digitalSensorValue == 0) {

digitalWrite(melodyPin, HIGH);

tone(melodyPin, 1397, 100);

delay(100);

tone(melodyPin, 659, 100);

delay(100);

tone(melodyPin, 1397, 100);


delay(100);

tone(melodyPin, 659, 100);

delay(100);


tone(melodyPin, 1397, 100);

delay(100);

tone(melodyPin, 659 );

Serial.println("ddd");

// led On

sendDataToServer("0");

}

else if(digitalSensorValue == 0){

// led On

digitalWrite(melodyPin, LOW);

noTone(melodyPin);

}

}

delay(50);            //don't ned to run this at full speed.

}



uint8_t getFingerprintID() {

uint8_t p = finger.getImage();

switch (p) {

case FINGERPRINT_OK:

Serial.println("Image taken");

break;

case FINGERPRINT_NOFINGER:

Serial.println("No finger detected");

return p;

case FINGERPRINT_PACKETRECIEVEERR:

Serial.println("Communication error");

return p;

case FINGERPRINT_IMAGEFAIL:

Serial.println("Imaging error");

return p;

default:

Serial.println("Unknown error");

return p;

}



// OK success!



p = finger.image2Tz();

switch (p) {

case FINGERPRINT_OK:

Serial.println("Image converted");

break;

case FINGERPRINT_IMAGEMESS:

Serial.println("Image too messy");

return p;

case FINGERPRINT_PACKETRECIEVEERR:

Serial.println("Communication error");

return p;

case FINGERPRINT_FEATUREFAIL:

Serial.println("Could not find fingerprint features");

return p;

case FINGERPRINT_INVALIDIMAGE:

Serial.println("Could not find fingerprint features");

return p;

default:

Serial.println("Unknown error");

return p;

}



// OK converted!

p = finger.fingerSearch();


if (p == FINGERPRINT_OK) {

state = true;

Serial.println("Found a print match!");

delay(10000);


} else if (p == FINGERPRINT_PACKETRECIEVEERR) {

Serial.println("Communication error");

return p;

} else if (p == FINGERPRINT_NOTFOUND) {

Serial.println("Did not find a match");

return p;

} else {

Serial.println("Unknown error");

return p;

}



// found a match!

Serial.print("Found ID #"); Serial.print(finger.fingerID);

Serial.print(" with confidence of "); Serial.println(finger.confidence);



return finger.fingerID;

}



// returns -1 if failed, otherwise returns ID #

int getFingerprintIDez() {

uint8_t p = finger.getImage();

if (p != FINGERPRINT_OK)  return -1;



p = finger.image2Tz();

if (p != FINGERPRINT_OK)  return -1;



p = finger.fingerFastSearch();

if (p != FINGERPRINT_OK)  return -1;



// found a match!

Serial.print("Found ID #"); Serial.print(finger.fingerID);

Serial.print(" with confidence of "); Serial.println(finger.confidence);

return finger.fingerID;

}



//wifimagnetic

void sendDataToServer(String data) {

Serial.print("connecting to ");

Serial.println(host);



// Use WiFiClient class to create TCP connections

WiFiClient client;

const int httpPort = 8099;

if (!client.connect(host, httpPort)) {

Serial.println("connection failed");

return;

}


// We now create a URI for the request

cmd = "/Soony_T/alarm.jsp?cmd=";//유모차 관리 생기면 변경

cmd += data;

Serial.print("Requesting URL: ");

Serial.println(cmd);



// This will send the request to the server

client.print(String("GET ") + cmd + " HTTP/1.1\r\n" +

"Host: " + host + "\r\n" +

"Connection: close\r\n\r\n");

unsigned long timeout = millis();

while (client.available() == 0) {

if (millis() - timeout > 5000) {

Serial.println(">>> Client Timeout !");

client.stop();

return;

}

}


  // Read all the lines of the reply from server and print them to Serial

while (client.available()) {

String line = client.readStringUntil('\r');

Serial.print(line);

}




Serial.println();

Serial.println("closing connection");

}
