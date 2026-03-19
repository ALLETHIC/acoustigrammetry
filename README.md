# acoustigrammetry
A project for creating navigable virtual acoustic models using novel techniques of acoustigrammetry.

___

This project uses acoustigrammetric techniques to generate 3rd-order Spatio-Temporal Ambisonic Impulse Responses (STAIRs) which can be loaded into game engines and then navigated with 6-degrees-of-freedom to facillitate immersive virtual acoustic environments.

___

<b>Project structure:</b>

  1. Software<br>
    a. STAIRcpp - Unreal template project<br>
    b. sharedmem~ - Max external    
    c. STAIRProcessor - Max patch    
  3. Hardware  
    a. STAIR Array STLs - design files for 3D printing the STAIR array    
    b. Hardware BOM - bill of materials for building the STAIR array    
    c. Raspberry Pi setup - documentation for setting up Raspberry Pis for ambisonic recording & playback

The principal portion of this project is in the software. The harware is not necessary for running the software of this project. It (or something like it) is only necessary for capturing STAIRs.

___

<b>How to use the software:</b>

1. Place sharedmem~ external in default Max MSP library
2. Open Unreal game
3. Open STAIR Processor Max MSP patch
4. Select whether you want stereo, quad, 7.1.4, or ambisonic output
5. If necessary, change output numbering in dac~ objects in stereo, etc. subpatches to match your system

___

About the Unreal template project:

