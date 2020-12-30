# swtpc-sound-card
Some M6800 assembly language and some python code to make SWPTC play wave data!

This code accompanies a video where I made a sound card using Bob Applegate's design located on GitHub here

https://github.com/CorshamTech/Music_Board



## Watch the video here

[![SWTPC Speaks! Video](https://img.youtube.com/vi/TBFA2xbCjZ4/0.jpg)](https://www.youtube.com/watch?v=TBFA2xbCjZ4)

Feel free to comment on the video and ask questions. I will try to answer any questions on usage etc. 

## Instructions

To run the Python Notebook you need to installed Jupyter Notebook instructions can be found here https://jupyter.org/install

Assembly language and complied with `AS02.EXE` the following command will output a S19 file but you need to add text `S9` at the end of the file on a line by itself so that it loads seamlessly into the SWPTC 6800

```
as02 -l -c -s -v play68-pwm.asm
```

