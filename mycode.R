
R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> getwd()
[1] "C:/Users/Laura/Documents"
> dir()
 [1] "Amazon Music Importer"           "Avatar"                         
 [3] "Custom Office Templates"         "desktop.ini"                    
 [5] "hp.applications.package.appdata" "hp.system.package.metadata"     
 [7] "My Music"                        "My Pictures"                    
 [9] "My Videos"                       "R"                              
[11] "Youcam"                         
> myfunction()
Error: could not find function "myfunction"
> ls()
character(0)
> myfunction <- function() {
+ x<-rnorm(100)
+ mean(x)
+ }
> ls()
[1] "myfunction"
> myfunction()
[1] 0.009193069
> myfunction()
[1] 0.1690749
> 
