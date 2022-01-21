#include "stm8s.h"
#include "milis.h"
#include "spse_stm8.h"
#include "stm8_hd44780.h"

/*#include "delay.h"*/
// #include <cstdint>
#include <stdio.h>
#include "stm8s_adc2.h"
//#include "uart1.h"

#define _ISOC99_SOURCE
#define _GNU_SOURCE

#define G4_PORT GPIOG
#define G4_PIN  GPIO_PIN_4
#define G4_HIGH   GPIO_WriteHigh(G4_PORT, G4_PIN)
#define G4_LOW  GPIO_WriteLow(G4_PORT, G4_PIN)


#define BTN_PORT GPIOE
#define BTN_PIN  GPIO_PIN_4
#define BTN_PUSH (GPIO_ReadInputPin(BTN_PORT, BTN_PIN)==RESET) 

void delay_ms(uint16_t ms) {
    uint16_t  i;
    for (i=0; i<ms; i = i+1){
        _delay_us(250);
        _delay_us(248);
        _delay_us(250);
        _delay_us(250);
    }
}

void setup(void)
{
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
    GPIO_Init(G4_PORT, G4_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
    GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
    
    init_milis();
    lcd_init();
    // inicializace ADC //
    // na pinech/vstupech ADC_IN2 (PB4) a ADC_IN3 (PB5) vypneme vstupní buffer
    ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL4, DISABLE);
    ADC2_SchmittTriggerConfig(ADC2_SCHMITTTRIG_CHANNEL5, DISABLE);
    // při inicializaci volíme frekvenci AD převodníku mezi 1-4MHz při 3.3V
    // mezi 1-6MHz při 5V napájení
    // nastavíme clock pro ADC (16MHz / 4 = 4MHz)
    ADC2_PrescalerConfig(ADC2_PRESSEL_FCPU_D4);
    // volíme zarovnání výsledku (typicky vpravo, jen vyjmečně je výhodné vlevo)
    ADC2_AlignConfig(ADC2_ALIGN_RIGHT);
    // nasatvíme multiplexer na některý ze vstupních kanálů
    ADC2_Select_Channel(ADC2_CHANNEL_4);
    // rozběhneme AD převodník
    ADC2_Cmd(ENABLE);
    // počkáme než se AD převodník rozběhne (~7us)
    ADC2_Startup_Wait();
}


int main(void)
{
    uint32_t stavty;
    uint16_t ADCx;
    uint16_t random;
    uint16_t x = 0;
    char text[32];
    uint16_t remiza;
    uint16_t bodyty;
    uint16_t bodystm;
    setup();

    while (1) {
        
        lcd_gotoxy(0, 0);
        sprintf(text,"tvuj vyber:");
        lcd_puts(text);

        lcd_gotoxy(0, 1);
        sprintf(text,"stm8 vyber:");
        lcd_puts(text);

        lcd_gotoxy(0, 2);
        sprintf(text,"body ty:");
        lcd_puts(text);

        lcd_gotoxy(0, 3);
        sprintf(text,"boty stm8:");
        lcd_puts(text);

        ADCx = ADC_get(ADC2_CHANNEL_4);

        if (ADCx < 314) {
            lcd_gotoxy(11, 0);
            sprintf(text,"papir");
            lcd_puts(text);
            stavty = 1;
        }

        if (ADCx > 314 && ADCx < 628) {
            lcd_gotoxy(11, 0);
            sprintf(text,"nuzky");
            lcd_puts(text);
            stavty = 2;
        }

        if (ADCx > 628) {
            lcd_gotoxy(11, 0);
            sprintf(text,"kamen");
            lcd_puts(text);
            stavty = 3;
        }




        if (BTN_PUSH && x == 0) {
            


           random = milis() % 3;

           if (random == 0) {
            lcd_gotoxy(11, 1);
            sprintf(text,"papir");
            lcd_puts(text);
            
            }

            if (random == 1) {
                lcd_gotoxy(11, 1);
                sprintf(text,"nuzky");
                lcd_puts(text);
                
            }

            if (random == 2) {
                lcd_gotoxy(11, 1);
                sprintf(text,"kamen");
                lcd_puts(text);
                
            }

            lcd_gotoxy(10 , 3);
            sprintf(text,"%1u",bodystm);
            lcd_puts(text);

            lcd_gotoxy(10 , 2);
            sprintf(text,"%1u",bodyty);
            lcd_puts(text);
            ///vyhodnocování 

            if (random == 0 ) {

                if (stavty == 1  ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"remiza");
                    lcd_puts(text);
                    
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    
                    }
                if (stavty == 2 ) {
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"vyhra");
                    lcd_puts(text);

                    lcd_gotoxy(14 , 3);
                    sprintf(text,"      ");
                    lcd_puts(text);
                    bodyty = bodyty +1;

                    lcd_gotoxy(10 , 2);
                    sprintf(text,"%1u",bodyty);
                    lcd_puts(text);
                    G4_HIGH;
                    delay_ms(50);
                    G4_LOW;
                    }
                if (stavty == 3 ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"vyhra");
                    lcd_puts(text);
                    bodystm = bodystm +1;
                                        
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    lcd_gotoxy(10 , 3);
                    sprintf(text,"%1u",bodystm);
                    lcd_puts(text);
                    }
            }  

            
            if (random == 1) {

                if (stavty == 1  ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"vyhra");
                    lcd_puts(text);
                    bodystm = bodystm +1;
                                        
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    lcd_gotoxy(10 , 3);
                    sprintf(text,"%1u",bodystm);
                    lcd_puts(text);
                    }
                if (stavty == 2 ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"remiza");
                    lcd_puts(text);
                                        
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    
                    }
                if (stavty == 3 ) {
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"vyhra");
                    lcd_puts(text);
                    bodyty = bodyty +1;
                                        
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    lcd_gotoxy(10 , 2);
                    sprintf(text,"%1u",bodyty);
                    lcd_puts(text);
                    G4_HIGH;
                    delay_ms(50);
                    G4_LOW;
                    }
            }  
    
            if (random == 2) {

                if (stavty == 1  ) {
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"vyhra");
                    lcd_puts(text);
                    bodyty = bodyty +1;
                                        
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    lcd_gotoxy(10 , 2);
                    sprintf(text,"%1u",bodyty);
                    lcd_puts(text);
                    G4_HIGH;
                    delay_ms(50);
                    G4_LOW;
                    }
                if (stavty == 2 ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"vyhra");
                    lcd_puts(text);
                    bodystm = bodystm +1;
                                        
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);

                    lcd_gotoxy(10 , 3);
                    sprintf(text,"%1u",bodystm);
                    lcd_puts(text);
                    }
                if (stavty == 3 ) {
                    lcd_gotoxy(14 , 3);
                    sprintf(text,"remiza");
                    lcd_puts(text);
                                        
                    lcd_gotoxy(14 , 2);
                    sprintf(text,"      ");
                    lcd_puts(text);
                    }
                x = 1;
            }  
            x = 0;
            delay_ms(500);
            delay_ms(500);
            delay_ms(500);
            












        }
    }
}

/*-------------------------------  Assert -----------------------------------*/
#include "__assert__.h"
