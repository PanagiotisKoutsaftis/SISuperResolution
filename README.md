# SISuperResolution

Here you can find all the code related to my Master's Thesis with title "Single Image Super-Resolution Techniques". 
 The purpose of the thesis is to implement several SISR algorithms and apply them to Satellite Imagery for Remote Sensing applications.
 We are going to implement different kinds of techniques from traditional image processing algorithms (with and without learning) to Deep Learning techniques such as CNN and GANs. 
 
This is an ongoing project so the code and the references are going to be enriched. 

***7/9/2022 Update***
Added functions which calculate quality metrics. Using this function we are going to assess the results of the SISR algorithms.

 **rmse_value**: calculates the value of the Root Mean Square Error
 
 **sam_value**: calculates the value of the Spectral Angle Mapper Index [3]
 
 **cc_value**: calculates the value of the correlation coefficient
 
 **ergas_value**: calculates the value of the ERGAS index [4]
 
 **assessmentWithRef**: calls all the aforementioned functions and returns the values
 
 **assessmentNoRef**: calculates the BRISQUE and NIQE values which are quality metrics used when there in no reference image
 
 
 
 ## References
 (1) [Ruben Fernandez-Beltran, Pedro Latorre-Carmona & Filiberto Pla (2017) Single-frame super-resolution in remote sensing: a practical overview, International Journal of Remote Sensing, 38:1, 314-354](http://dx.doi.org/10.1080/01431161.2016.1264027)
 
 (2) [C. -Y. Yang and M. -H. Yang, "Fast Direct Super-Resolution by Simple Functions," 2013 IEEE International Conference on Computer Vision, 2013, pp. 561-568, doi: 10.1109/ICCV.2013.75.](https://ieeexplore.ieee.org/document/6751179)
 
 (3) [Yuhas, R. H., A. F. H. Goetz, and J. W. Boardman. 1992. "Discrimination among Semi-Arid Landscape Endmembers Using the Spectral Anglemapper (SAM) Algorithm." In Proc. Summaries 3rd Annu. JPL Airborne Geosci. Workshop, 147–149. California, USA: Jet Propulsion Laboratory (JPL), NASA.](https://aviris.jpl.nasa.gov/proceedings/workshops/92_docs/52.PDF)
 
 (4) [Veganzones, M., M. Simoes, G. Licciardi, N. Yokoya, J. Bioucas-Dias, and J. Chanussot. 2016. "Hyperspectral Super-Resolution of Locally Low Rank Images from Complementary Multisource Data.” IEEE Transactions on Image Processing 25 (1): 274–288. doi:10.1109/TIP.2015.2496263.](https://ieeexplore.ieee.org/document/7312998)
