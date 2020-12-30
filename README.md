# swtpc-sound-card
Some M6800 assembly language and some python code to make SWPTC play wave data!

This code accompanies a video where I made a sound card using Bob Applegate's design located on GitHub here

https://github.com/CorshamTech/Music_Board



## Watch the video here

[![SWTPC Speaks! Video](https://img.youtube.com/vi/TBFA2xbCjZ4/0.jpg)](https://www.youtube.com/watch?v=TBFA2xbCjZ4)

Feel free to comment on the video and ask questions. I will try to answer any questions on usage etc. 

## Instructions

### Python code
To run the Python Notebook you need to install Jupyter Notebook. Instructions can be found here https://jupyter.org/install

You will also need a few python libraries. Here is how to install them
```python
pip3 install numpy matplotlib soundfile samplerate
```

### Assembly Language
Assembly language was complied with `AS02.EXE` written by Frank A. Kingswood. A link to the assembler compiler is here http://www.kingswood-consulting.co.uk/assemblers/

 The following command will output a S19 file but you need to add the text `S9` at the end of the file on a line by itself so that it loads seamlessly into the SWPTC 6800

```
as02 -l -c -s -v play68-pwm.asm
```

