# Acoustigrammetry
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

The principal portion of this project is in the software. The harware is not necessary for running the software of this project. The hardware (or something like it) is only necessary for capturing STAIRs.

___

<b>How to use the software:</b>

1. Place sharedmem~ external in default Max MSP library
2. Open Unreal game
3. Open STAIRProcessor Max MSP patch
4. In the STAIRPRocessor, select whether you want stereo, quad, 7.1.4, or ambisonic output
5. If necessary, change output numbering in dac~ objects in stereo, etc. subpatches to match your system
6. If desired, binauralization can be enabled on stereo output
___

About the Unreal template project:

The Unreal template project contains all the contructs necessary for working with STAIRs in an Unreal project. Here is a breakdown of the essential constructs included:
1. <i>A first-person character with a ListenersSphere and an SFLSphere.</i> The ListenersSphere is parent two 16 unit spheres corresponding to the 16 channels of 3rd-order A-format ambisonics. The ListnersSphere fully tracks the movement of the first-person character. The SFLSphere is similar to the ListenersSphere but differs in 2 important ways. 1) It only tracks the translational movement of the first-person character. 2) Each unit sphere is parent to a special Metasound patch known as the Spectral Frame Looper. This loops a spectral frame of the a STAIR channel depending on the first-person character's distance along a spline.
2. <i>3rd-order ambisonic encoding.</i> Any sound emitting entity has attached to it a patch which sends sound based upon its distance to the 16 child spheres of the ListenersSphere to 16 corresponding submixes. The send amount can be adjusted between a more hyperbolic or more linear curve. A hyperbolic curve matches the inverse square law of acoustics. However, subjective testing revealed this falloff to be too precipitous. So a linear curve may be more desirable.
3. <i>Submix shared-memory sender effect.</i> A C++ class is used to place both listener submixes and SFL submixes into shared memory to be read in Max MSP where audio DSP and different output configurations can more easily be iterated.

___

About the STAIRProcessor:

___

For a more detailed and comprehensive documentation of this projection, lookout for my forthcoming thesis, <i>Convolving the Convoluted: The Long & Winding Road to Acoustigrammetry</i>, to be published May 8 2026._
