# PWM-signal-generator-in-VHDL
- Name: PWM signal generator in VHDL

- PWM is using in the many different kind applications. Servo motors, communication modulation. In this application, I choose 50Hz signal for servo motor compatibility. 

- 50Hz signal is about 20ms on application.


![alt text](https://github.com/suleymaninci/PWM-signal-generator-in-VHDL/blob/master/pictures/pwm.png)




- Project employment board is NEXYS A7-100T. According to  [datasheet](https://reference.digilentinc.com/reference/programmable-logic/nexys-a7/reference-manual), this board has own 100Mhz crystal oscillator. And It equals to 10ns cycles. Base counter must and equation is 20𝑚𝑠10𝑛𝑠=2,000,000
-

## setup generator

![alt text](https://github.com/suleymaninci/PWM-signal-generator-in-VHDL/blob/master/pictures/pwm_gen.jpg)

## Simulation

### simulating device's crystal oscillator. 100MHz frequency is 10ns

![alt text](https://github.com/suleymaninci/PWM-signal-generator-in-VHDL/blob/master/pictures/pwm_clock.jpg)

### simulation

- I choose first three step are 1ms,1.5ms and 2ms. All these values are in the 5% and 10% values which is applicable of servo controls. Other selected points are 10 (25%), 16(40%), 20 (50%), 32 (80%) and 40 (100%). Percentage values are representation of duty cycles. 

![alt text](https://github.com/suleymaninci/PWM-signal-generator-in-VHDL/blob/master/pictures/pwm_sim.jpg)



- Quick look at simulation for 200ms 

![alt text](https://github.com/suleymaninci/PWM-signal-generator-in-VHDL/blob/master/pictures/sim_new.jpg)
