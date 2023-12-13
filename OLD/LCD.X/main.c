#include <p18f4550.h>
#include <delays.h>

#define RS PORTEbits.RE2
#define ENA PORTEbits.RE1

void delay_ms(unsigned int n);
void LCD_BYTE(unsigned char data);
void main ()
{

    ADCON0bits.ADON=0;
    ADCON1=0x0F;
    DDRD=0x00;
    DDRE=0x00;

    delay_ms(15); //Aguardar 15ms
    LCD_BYTE (0x30); // comunicação em 8 vias
    LCD_BYTE (0x38); //matrix pixel 8x5
    LCD_BYTE (0x0F);// ligar cursor piscante
    LCD_BYTE (0x06); // deslocamento a DIR cursor
    LCD_BYTE (0x01); //limpa display
    delay_ms(2);
    //RS=0; // (O pino RE2 vai ser o RS, mas ja definimos isso lá no início do programa)
    //PORTD=0x30; //Comunicação 8 vias
    //ENA=1;
    //Delay1TCY(); //200ns
    //Delay1TCY(); //200ns
    //ENA=0; //enable desligado (em zero)
    //Delay10TCYx(20); //40 micro segundos

    //RS=0;
    //PORTD=0x38; // matrix 8 por 5
    //ENA=1;
   // Delay1TCY(); //200ns
   //Delay1TCY(); //200ns
    //ENA=0; //enable desligado (em zero)
    //Delay10TCYx(20); //40 micro segundos


    //RS=0; // (O pino RE2 vai ser o RS, mas ja definimos isso lá no início do programa)
    //PORTD=0x0F; // Liga cursor
    //ENA=1;
    //Delay1TCY(); //200ns
    //Delay1TCY(); //200ns
    //ENA=0; //enable desligado (em zero)
    //Delay10TCYx(20); //40 micro segundos


    while(1);
}
void delay_ms(unsigned int n)
{
    unsigned int i=0;
    for(i=0;i<n;i++)
        Delay100TCYx(50);
}
void LCD_BYTE(unsigned char data)
{

     RS=0; // (O pino RE2 vai ser o RS, mas ja definimos isso lá no início do programa)
    PORTD=data;
    ENA=1;
    Delay1TCY(); //200ns
    Delay1TCY(); //200ns
    ENA=0; //enable desligado (em zero)
    Delay10TCYx(20); //40 micro segundos

}