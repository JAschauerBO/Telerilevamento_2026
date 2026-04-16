# Working Title of my exam project

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc

I have chosen Mauretania, because I really liked the landsape there:
<img width="1024" height="768" alt="AdobeStock_632088238-1024x768" src="https://github.com/user-attachments/assets/fe0258ec-af81-4438-9d77-4c73b3b07d5e" />


## used packages

I have used following packages:

``` r
library(terra) # package used to...
library(imageRy) # for Multiframe and other
```

## Import data
The data was downloaded from [Earth Observatory](https://earthobservatory.nasa.gov/)

Following code was used after selecting the working directory:

``` r
setwd("C:/Users/jakob/Seafile/Meine Bibliothek/Erasmus/Telerilevamento/Coding")

getwd()

list.files()
```

to import the data the `rast()` funtion of the `terra` package was used:
```r
richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)
```

<img width="480" height="480" alt="figure1" src="https://github.com/user-attachments/assets/b9d340d8-c6a9-4654-aa7e-ab456b0d24e7" />

## Explorative analysis
First we plot the single bands
```
png("figure_bande.png")
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]]) 
dev.off()
```

<img width="480" height="480" alt="figure_bande" src="https://github.com/user-attachments/assets/aca07dd1-c1a9-4f4f-b722-d5b205519bd5" />


