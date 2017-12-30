clf;
#cicloide
t = linspace(0, pi*0.77, 30);
r = 58;
x = r*(t-sin(t));
y = r*(1-cos(t));
plot(x,y, "color", "g"); hold;

#10 punts amb refinació - blau
x = [1e-12 ,1e-12 ,2.94555e-07 ,0.00108372 ,0.16886 ,4.94232 ,60 ,70 ,80 ,90 ,100]; 
y = [1e-12 ,8.85777e-07 ,0.00166643 ,0.142889 ,2.49806 ,17.8391 ,60 ,70 ,80 ,90 ,100]; 
plot(x,y, "color", 'b');

#50 punts amb refinació - magenta
x = [1e-12 ,9.9995e-13 ,1e-12 ,1.24879e-08 ,6.18415e-07 ,9.73092e-06 ,7.61729e-05 ,0.000387157 ,0.00146933 ,0.00452631 ,0.0119368 ,0.0279307 ,0.0594563 ,0.117248 ,0.217103 ,0.381373 ,0.640683 ,1.03588 ,1.62021 ,2.4618 ,3.64638 ,5.28041 ,7.49455 ,10.4479 ,14.3329 ,19.3822 ,25.8777 ,34.1654 ,44.6807 ,58 ,60 ,62 ,64 ,66 ,68 ,70 ,72 ,74 ,76 ,78 ,80 ,82 ,84 ,86 ,88 ,90 ,92 ,94 ,96 ,98 ,100]; 
y = [1e-12 ,1.24023e-08 ,2.74998e-06 ,7.9148e-05 ,0.000770081 ,0.00403404 ,0.0144318 ,0.0401608 ,0.0938252 ,0.192977 ,0.360489 ,0.624785 ,1.01997 ,1.58581 ,2.36763 ,3.41599 ,4.78623 ,6.53771 ,8.73282 ,11.4356 ,14.7097 ,18.6166 ,23.2117 ,28.5411 ,34.6365 ,41.5089 ,49.1399 ,57.4712 ,66.3882 ,75.6946 ,77.1757 ,78.6182 ,80.0233 ,81.3922 ,82.7261 ,84.0261 ,85.2931 ,86.5281 ,87.732 ,88.9054 ,90.0493 ,91.1643 ,92.2512 ,93.3104 ,94.3427 ,95.3486 ,96.3287 ,97.2834 ,98.2132 ,99.1186 ,100]; 
plot(x,y, "color", 'm');

#200 punts amb refinació - cyan
x = [1e-12 ,1.04982e-12 ,1.54151e-10 ,7.56683e-08 ,4.17672e-06 ,6.85577e-05 ,0.000556487 ,0.00289852 ,0.0111915 ,0.034917 ,0.0929936 ,0.219333 ,0.470061 ,0.932615 ,1.73711 ,3.07094 ,5.19926 ,8.5 ,9 ,9.5 ,10 ,10.5 ,11 ,11.5 ,12 ,12.5 ,13 ,13.5 ,14 ,14.5 ,15 ,15.5 ,16 ,16.5 ,17 ,17.5 ,18 ,18.5 ,19 ,19.5 ,20 ,20.5 ,21 ,21.5 ,22 ,22.5 ,23 ,23.5 ,24 ,24.5 ,25 ,25.5 ,26 ,26.5 ,27 ,27.5 ,28 ,28.5 ,29 ,29.5 ,30 ,30.5 ,31 ,31.5 ,32 ,32.5 ,33 ,33.5 ,34 ,34.5 ,35 ,35.5 ,36 ,36.5 ,37 ,37.5 ,38 ,38.5 ,39 ,39.5 ,40 ,40.5 ,41 ,41.5 ,42 ,42.5 ,43 ,43.5 ,44 ,44.5 ,45 ,45.5 ,46 ,46.5 ,47 ,47.5 ,48 ,48.5 ,49 ,49.5 ,50 ,50.5 ,51 ,51.5 ,52 ,52.5 ,53 ,53.5 ,54 ,54.5 ,55 ,55.5 ,56 ,56.5 ,57 ,57.5 ,58 ,58.5 ,59 ,59.5 ,60 ,60.5 ,61 ,61.5 ,62 ,62.5 ,63 ,63.5 ,64 ,64.5 ,65 ,65.5 ,66 ,66.5 ,67 ,67.5 ,68 ,68.5 ,69 ,69.5 ,70 ,70.5 ,71 ,71.5 ,72 ,72.5 ,73 ,73.5 ,74 ,74.5 ,75 ,75.5 ,76 ,76.5 ,77 ,77.5 ,78 ,78.5 ,79 ,79.5 ,80 ,80.5 ,81 ,81.5 ,82 ,82.5 ,83 ,83.5 ,84 ,84.5 ,85 ,85.5 ,86 ,86.5 ,87 ,87.5 ,88 ,88.5 ,89 ,89.5 ,90 ,90.5 ,91 ,91.5 ,92 ,92.5 ,93 ,93.5 ,94 ,94.5 ,95 ,95.5 ,96 ,96.5 ,97 ,97.5 ,98 ,98.5 ,99 ,99.5 ,100]; 
y = [1e-12 ,1.84363e-08 ,4.98811e-06 ,0.000159108 ,0.0016381 ,0.00887394 ,0.0324312 ,0.0915451 ,0.215954 ,0.446988 ,0.837855 ,1.45289 ,2.36531 ,3.65291 ,5.3905 ,7.63788 ,10.4205 ,13.6978 ,14.3185 ,14.9197 ,15.5027 ,16.0687 ,16.6186 ,17.1533 ,17.6736 ,18.1802 ,18.6738 ,19.155 ,19.6244 ,20.0824 ,20.5295 ,20.9662 ,21.3929 ,21.8098 ,22.2175 ,22.6161 ,23.0059 ,23.3874 ,23.7606 ,24.1259 ,24.4835 ,24.8335 ,25.1763 ,25.5119 ,25.8406 ,26.1625 ,26.4778 ,26.7866 ,27.0891 ,27.3855 ,27.6757 ,27.9601 ,28.2386 ,28.5114 ,28.7786 ,29.0403 ,29.2966 ,29.5475 ,29.7933 ,30.0339 ,30.2694 ,30.5 ,31 ,31.5 ,32 ,32.5 ,33 ,33.5 ,34 ,34.5 ,35 ,35.5 ,36 ,36.5 ,37 ,37.5 ,38 ,38.5 ,39 ,39.5 ,40 ,40.5 ,41 ,41.5 ,42 ,42.5 ,43 ,43.5 ,44 ,44.5 ,45 ,45.5 ,46 ,46.5 ,47 ,47.5 ,48 ,48.5 ,49 ,49.5 ,50 ,50.5 ,51 ,51.5 ,52 ,52.5 ,53 ,53.5 ,54 ,54.5 ,55 ,55.5 ,56 ,56.5 ,57 ,57.5 ,58 ,58.5 ,59 ,59.5 ,60 ,60.5 ,61 ,61.5 ,62 ,62.5 ,63 ,63.5 ,64 ,64.5 ,65 ,65.5 ,66 ,66.5 ,67 ,67.5 ,68 ,68.5 ,69 ,69.5 ,70 ,70.5 ,71 ,71.5 ,72 ,72.5 ,73 ,73.5 ,74 ,74.5 ,75 ,75.5 ,76 ,76.5 ,77 ,77.5 ,78 ,78.5 ,79 ,79.5 ,80 ,80.5 ,81 ,81.5 ,82 ,82.5 ,83 ,83.5 ,84 ,84.5 ,85 ,85.5 ,86 ,86.5 ,87 ,87.5 ,88 ,88.5 ,89 ,89.5 ,90 ,90.5 ,91 ,91.5 ,92 ,92.5 ,93 ,93.5 ,94 ,94.5 ,95 ,95.5 ,96 ,96.5 ,97 ,97.5 ,98 ,98.5 ,99 ,99.5 ,100]; 
plot(x,y, "color", 'c');

#1000 punts amb refinació -  roig
x = [1e-12 ,1.00037e-12 ,3.04985e-12 ,3.94273e-10 ,1.28148e-08 ,1.56013e-07 ,1.05332e-06 ,4.85531e-06 ,1.72037e-05 ,5.03848e-05 ,0.000127852 ,0.000290247 ,0.000603009 ,0.00116565 ,0.00212274 ,0.00367664 ,0.00610207 ,0.00976241 ,0.0151279 ,0.0227959 ,0.0335123 ,0.0481961 ,0.0679645 ,0.094161 ,0.128385 ,0.172523 ,0.228783 ,0.29973 ,0.388322 ,0.497954 ,0.632493 ,0.796331 ,0.994426 ,1.23235 ,1.51635 ,1.85339 ,2.25121 ,2.71842 ,3.26452 ,3.9 ,4 ,4.1 ,4.2 ,4.3 ,4.4 ,4.5 ,4.6 ,4.7 ,4.8 ,4.9 ,5 ,5.1 ,5.2 ,5.3 ,5.4 ,5.5 ,5.6 ,5.7 ,5.8 ,5.9 ,6 ,6.1 ,6.2 ,6.3 ,6.4 ,6.5 ,6.6 ,6.7 ,6.8 ,6.9 ,7 ,7.1 ,7.2 ,7.3 ,7.4 ,7.5 ,7.6 ,7.7 ,7.8 ,7.9 ,8 ,8.1 ,8.2 ,8.3 ,8.4 ,8.5 ,8.6 ,8.7 ,8.8 ,8.9 ,9 ,9.1 ,9.2 ,9.3 ,9.4 ,9.5 ,9.6 ,9.7 ,9.8 ,9.9 ,10 ,10.1 ,10.2 ,10.3 ,10.4 ,10.5 ,10.6 ,10.7 ,10.8 ,10.9 ,11 ,11.1 ,11.2 ,11.3 ,11.4 ,11.5 ,11.6 ,11.7 ,11.8 ,11.9 ,12 ,12.1 ,12.2 ,12.3 ,12.4 ,12.5 ,12.6 ,12.7 ,12.8 ,12.9 ,13 ,13.1 ,13.2 ,13.3 ,13.4 ,13.5 ,13.6 ,13.7 ,13.8 ,13.9 ,14 ,14.1 ,14.2 ,14.3 ,14.4 ,14.5 ,14.6 ,14.7 ,14.8 ,14.9 ,15 ,15.1 ,15.2 ,15.3 ,15.4 ,15.5 ,15.6 ,15.7 ,15.8 ,15.9 ,16 ,16.1 ,16.2 ,16.3 ,16.4 ,16.5 ,16.6 ,16.7 ,16.8 ,16.9 ,17 ,17.1 ,17.2 ,17.3 ,17.4 ,17.5 ,17.6 ,17.7 ,17.8 ,17.9 ,18 ,18.1 ,18.2 ,18.3 ,18.4 ,18.5 ,18.6 ,18.7 ,18.8 ,18.9 ,19 ,19.1 ,19.2 ,19.3 ,19.4 ,19.5 ,19.6 ,19.7 ,19.8 ,19.9 ,20 ,20.1 ,20.2 ,20.3 ,20.4 ,20.5 ,20.6 ,20.7 ,20.8 ,20.9 ,21 ,21.1 ,21.2 ,21.3 ,21.4 ,21.5 ,21.6 ,21.7 ,21.8 ,21.9 ,22 ,22.1 ,22.2 ,22.3 ,22.4 ,22.5 ,22.6 ,22.7 ,22.8 ,22.9 ,23 ,23.1 ,23.2 ,23.3 ,23.4 ,23.5 ,23.6 ,23.7 ,23.8 ,23.9 ,24 ,24.1 ,24.2 ,24.3 ,24.4 ,24.5 ,24.6 ,24.7 ,24.8 ,24.9 ,25 ,25.1 ,25.2 ,25.3 ,25.4 ,25.5 ,25.6 ,25.7 ,25.8 ,25.9 ,26 ,26.1 ,26.2 ,26.3 ,26.4 ,26.5 ,26.6 ,26.7 ,26.8 ,26.9 ,27 ,27.1 ,27.2 ,27.3 ,27.4 ,27.5 ,27.6 ,27.7 ,27.8 ,27.9 ,28 ,28.1 ,28.2 ,28.3 ,28.4 ,28.5 ,28.6 ,28.7 ,28.8 ,28.9 ,29 ,29.1 ,29.2 ,29.3 ,29.4 ,29.5 ,29.6 ,29.7 ,29.8 ,29.9 ,30 ,30.1 ,30.2 ,30.3 ,30.4 ,30.5 ,30.6 ,30.7 ,30.8 ,30.9 ,31 ,31.1 ,31.2 ,31.3 ,31.4 ,31.5 ,31.6 ,31.7 ,31.8 ,31.9 ,32 ,32.1 ,32.2 ,32.3 ,32.4 ,32.5 ,32.6 ,32.7 ,32.8 ,32.9 ,33 ,33.1 ,33.2 ,33.3 ,33.4 ,33.5 ,33.6 ,33.7 ,33.8 ,33.9 ,34 ,34.1 ,34.2 ,34.3 ,34.4 ,34.5 ,34.6 ,34.7 ,34.8 ,34.9 ,35 ,35.1 ,35.2 ,35.3 ,35.4 ,35.5 ,35.6 ,35.7 ,35.8 ,35.9 ,36 ,36.1 ,36.2 ,36.3 ,36.4 ,36.5 ,36.6 ,36.7 ,36.8 ,36.9 ,37 ,37.1 ,37.2 ,37.3 ,37.4 ,37.5 ,37.6 ,37.7 ,37.8 ,37.9 ,38 ,38.1 ,38.2 ,38.3 ,38.4 ,38.5 ,38.6 ,38.7 ,38.8 ,38.9 ,39 ,39.1 ,39.2 ,39.3 ,39.4 ,39.5 ,39.6 ,39.7 ,39.8 ,39.9 ,40 ,40.1 ,40.2 ,40.3 ,40.4 ,40.5 ,40.6 ,40.7 ,40.8 ,40.9 ,41 ,41.1 ,41.2 ,41.3 ,41.4 ,41.5 ,41.6 ,41.7 ,41.8 ,41.9 ,42 ,42.1 ,42.2 ,42.3 ,42.4 ,42.5 ,42.6 ,42.7 ,42.8 ,42.9 ,43 ,43.1 ,43.2 ,43.3 ,43.4 ,43.5 ,43.6 ,43.7 ,43.8 ,43.9 ,44 ,44.1 ,44.2 ,44.3 ,44.4 ,44.5 ,44.6 ,44.7 ,44.8 ,44.9 ,45 ,45.1 ,45.2 ,45.3 ,45.4 ,45.5 ,45.6 ,45.7 ,45.8 ,45.9 ,46 ,46.1 ,46.2 ,46.3 ,46.4 ,46.5 ,46.6 ,46.7 ,46.8 ,46.9 ,47 ,47.1 ,47.2 ,47.3 ,47.4 ,47.5 ,47.6 ,47.7 ,47.8 ,47.9 ,48 ,48.1 ,48.2 ,48.3 ,48.4 ,48.5 ,48.6 ,48.7 ,48.8 ,48.9 ,49 ,49.1 ,49.2 ,49.3 ,49.4 ,49.5 ,49.6 ,49.7 ,49.8 ,49.9 ,50 ,50.1 ,50.2 ,50.3 ,50.4 ,50.5 ,50.6 ,50.7 ,50.8 ,50.9 ,51 ,51.1 ,51.2 ,51.3 ,51.4 ,51.5 ,51.6 ,51.7 ,51.8 ,51.9 ,52 ,52.1 ,52.2 ,52.3 ,52.4 ,52.5 ,52.6 ,52.7 ,52.8 ,52.9 ,53 ,53.1 ,53.2 ,53.3 ,53.4 ,53.5 ,53.6 ,53.7 ,53.8 ,53.9 ,54 ,54.1 ,54.2 ,54.3 ,54.4 ,54.5 ,54.6 ,54.7 ,54.8 ,54.9 ,55 ,55.1 ,55.2 ,55.3 ,55.4 ,55.5 ,55.6 ,55.7 ,55.8 ,55.9 ,56 ,56.1 ,56.2 ,56.3 ,56.4 ,56.5 ,56.6 ,56.7 ,56.8 ,56.9 ,57 ,57.1 ,57.2 ,57.3 ,57.4 ,57.5 ,57.6 ,57.7 ,57.8 ,57.9 ,58 ,58.1 ,58.2 ,58.3 ,58.4 ,58.5 ,58.6 ,58.7 ,58.8 ,58.9 ,59 ,59.1 ,59.2 ,59.3 ,59.4 ,59.5 ,59.6 ,59.7 ,59.8 ,59.9 ,60 ,60.1 ,60.2 ,60.3 ,60.4 ,60.5 ,60.6 ,60.7 ,60.8 ,60.9 ,61 ,61.1 ,61.2 ,61.3 ,61.4 ,61.5 ,61.6 ,61.7 ,61.8 ,61.9 ,62 ,62.1 ,62.2 ,62.3 ,62.4 ,62.5 ,62.6 ,62.7 ,62.8 ,62.9 ,63 ,63.1 ,63.2 ,63.3 ,63.4 ,63.5 ,63.6 ,63.7 ,63.8 ,63.9 ,64 ,64.1 ,64.2 ,64.3 ,64.4 ,64.5 ,64.6 ,64.7 ,64.8 ,64.9 ,65 ,65.1 ,65.2 ,65.3 ,65.4 ,65.5 ,65.6 ,65.7 ,65.8 ,65.9 ,66 ,66.1 ,66.2 ,66.3 ,66.4 ,66.5 ,66.6 ,66.7 ,66.8 ,66.9 ,67 ,67.1 ,67.2 ,67.3 ,67.4 ,67.5 ,67.6 ,67.7 ,67.8 ,67.9 ,68 ,68.1 ,68.2 ,68.3 ,68.4 ,68.5 ,68.6 ,68.7 ,68.8 ,68.9 ,69 ,69.1 ,69.2 ,69.3 ,69.4 ,69.5 ,69.6 ,69.7 ,69.8 ,69.9 ,70 ,70.1 ,70.2 ,70.3 ,70.4 ,70.5 ,70.6 ,70.7 ,70.8 ,70.9 ,71 ,71.1 ,71.2 ,71.3 ,71.4 ,71.5 ,71.6 ,71.7 ,71.8 ,71.9 ,72 ,72.1 ,72.2 ,72.3 ,72.4 ,72.5 ,72.6 ,72.7 ,72.8 ,72.9 ,73 ,73.1 ,73.2 ,73.3 ,73.4 ,73.5 ,73.6 ,73.7 ,73.8 ,73.9 ,74 ,74.1 ,74.2 ,74.3 ,74.4 ,74.5 ,74.6 ,74.7 ,74.8 ,74.9 ,75 ,75.1 ,75.2 ,75.3 ,75.4 ,75.5 ,75.6 ,75.7 ,75.8 ,75.9 ,76 ,76.1 ,76.2 ,76.3 ,76.4 ,76.5 ,76.6 ,76.7 ,76.8 ,76.9 ,77 ,77.1 ,77.2 ,77.3 ,77.4 ,77.5 ,77.6 ,77.7 ,77.8 ,77.9 ,78 ,78.1 ,78.2 ,78.3 ,78.4 ,78.5 ,78.6 ,78.7 ,78.8 ,78.9 ,79 ,79.1 ,79.2 ,79.3 ,79.4 ,79.5 ,79.6 ,79.7 ,79.8 ,79.9 ,80 ,80.1 ,80.2 ,80.3 ,80.4 ,80.5 ,80.6 ,80.7 ,80.8 ,80.9 ,81 ,81.1 ,81.2 ,81.3 ,81.4 ,81.5 ,81.6 ,81.7 ,81.8 ,81.9 ,82 ,82.1 ,82.2 ,82.3 ,82.4 ,82.5 ,82.6 ,82.7 ,82.8 ,82.9 ,83 ,83.1 ,83.2 ,83.3 ,83.4 ,83.5 ,83.6 ,83.7 ,83.8 ,83.9 ,84 ,84.1 ,84.2 ,84.3 ,84.4 ,84.5 ,84.6 ,84.7 ,84.8 ,84.9 ,85 ,85.1 ,85.2 ,85.3 ,85.4 ,85.5 ,85.6 ,85.7 ,85.8 ,85.9 ,86 ,86.1 ,86.2 ,86.3 ,86.4 ,86.5 ,86.6 ,86.7 ,86.8 ,86.9 ,87 ,87.1 ,87.2 ,87.3 ,87.4 ,87.5 ,87.6 ,87.7 ,87.8 ,87.9 ,88 ,88.1 ,88.2 ,88.3 ,88.4 ,88.5 ,88.6 ,88.7 ,88.8 ,88.9 ,89 ,89.1 ,89.2 ,89.3 ,89.4 ,89.5 ,89.6 ,89.7 ,89.8 ,89.9 ,90 ,90.1 ,90.2 ,90.3 ,90.4 ,90.5 ,90.6 ,90.7 ,90.8 ,90.9 ,91 ,91.1 ,91.2 ,91.3 ,91.4 ,91.5 ,91.6 ,91.7 ,91.8 ,91.9 ,92 ,92.1 ,92.2 ,92.3 ,92.4 ,92.5 ,92.6 ,92.7 ,92.8 ,92.9 ,93 ,93.1 ,93.2 ,93.3 ,93.4 ,93.5 ,93.6 ,93.7 ,93.8 ,93.9 ,94 ,94.1 ,94.2 ,94.3 ,94.4 ,94.5 ,94.6 ,94.7 ,94.8 ,94.9 ,95 ,95.1 ,95.2 ,95.3 ,95.4 ,95.5 ,95.6 ,95.7 ,95.8 ,95.9 ,96 ,96.1 ,96.2 ,96.3 ,96.4 ,96.5 ,96.6 ,96.7 ,96.8 ,96.9 ,97 ,97.1 ,97.2 ,97.3 ,97.4 ,97.5 ,97.6 ,97.7 ,97.8 ,97.9 ,98 ,98.1 ,98.2 ,98.3 ,98.4 ,98.5 ,98.6 ,98.7 ,98.8 ,98.9 ,99 ,99.1 ,99.2 ,99.3 ,99.4 ,99.5 ,99.6 ,99.7 ,99.8 ,99.9 ,100]; 
y = [1e-12 ,2.79679e-09 ,2.93018e-07 ,5.70547e-06 ,4.46469e-05 ,0.000205141 ,0.000674312 ,0.00177078 ,0.00396833 ,0.0079128 ,0.0144342 ,0.0245555 ,0.0394993 ,0.0606927 ,0.0897707 ,0.128579 ,0.179176 ,0.243831 ,0.325028 ,0.42546 ,0.54803 ,0.695845 ,0.872214 ,1.08064 ,1.3248 ,1.60857 ,1.93597 ,2.31118 ,2.7385 ,3.22237 ,3.76728 ,4.37783 ,5.05862 ,5.81425 ,6.64932 ,7.56829 ,8.57553 ,9.6752 ,10.8712 ,12.1672 ,12.4378 ,12.7058 ,12.9712 ,13.2341 ,13.4945 ,13.7525 ,14.0082 ,14.2617 ,14.5129 ,14.762 ,15.009 ,15.2539 ,15.4969 ,15.7379 ,15.977 ,16.2142 ,16.4497 ,16.6834 ,16.9153 ,17.1456 ,17.3742 ,17.6011 ,17.8265 ,18.0504 ,18.2727 ,18.4936 ,18.713 ,18.9309 ,19.1475 ,19.3627 ,19.5766 ,19.7891 ,20.0003 ,20.2103 ,20.419 ,20.6265 ,20.8328 ,21.0379 ,21.2418 ,21.4447 ,21.6463 ,21.8469 ,22.0464 ,22.2448 ,22.4422 ,22.6385 ,22.8339 ,23.0282 ,23.2215 ,23.4139 ,23.6053 ,23.7958 ,23.9853 ,24.1739 ,24.3617 ,24.5485 ,24.7344 ,24.9195 ,25.1038 ,25.2872 ,25.4697 ,25.6515 ,25.8324 ,26.0126 ,26.1919 ,26.3705 ,26.5483 ,26.7254 ,26.9017 ,27.0773 ,27.2521 ,27.4262 ,27.5996 ,27.7723 ,27.9444 ,28.1157 ,28.2863 ,28.4563 ,28.6256 ,28.7943 ,28.9623 ,29.1296 ,29.2964 ,29.4625 ,29.6279 ,29.7928 ,29.9571 ,30.1207 ,30.2838 ,30.4462 ,30.6081 ,30.7694 ,30.9302 ,31.0903 ,31.2499 ,31.409 ,31.5675 ,31.7255 ,31.8829 ,32.0398 ,32.1961 ,32.352 ,32.5073 ,32.6621 ,32.8164 ,32.9702 ,33.1234 ,33.2762 ,33.4285 ,33.5803 ,33.7317 ,33.8825 ,34.0329 ,34.1828 ,34.3322 ,34.4812 ,34.6297 ,34.7778 ,34.9254 ,35.0726 ,35.2193 ,35.3656 ,35.5114 ,35.6568 ,35.8018 ,35.9464 ,36.0905 ,36.2342 ,36.3775 ,36.5204 ,36.6628 ,36.8049 ,36.9466 ,37.0878 ,37.2287 ,37.3691 ,37.5092 ,37.6489 ,37.7882 ,37.9271 ,38.0656 ,38.2038 ,38.3415 ,38.4789 ,38.616 ,38.7526 ,38.8889 ,39.0249 ,39.1605 ,39.2957 ,39.4305 ,39.565 ,39.6992 ,39.833 ,39.9665 ,40.0996 ,40.2324 ,40.3648 ,40.4969 ,40.6287 ,40.7601 ,40.8912 ,41.022 ,41.1524 ,41.2826 ,41.4124 ,41.5418 ,41.671 ,41.7998 ,41.9284 ,42.0566 ,42.1845 ,42.3121 ,42.4394 ,42.5663 ,42.693 ,42.8194 ,42.9455 ,43.0712 ,43.1967 ,43.3219 ,43.4468 ,43.5714 ,43.6957 ,43.8197 ,43.9435 ,44.0669 ,44.1901 ,44.3129 ,44.4355 ,44.5579 ,44.6799 ,44.8017 ,44.9232 ,45.0444 ,45.1653 ,45.286 ,45.4064 ,45.5266 ,45.6464 ,45.766 ,45.8854 ,46.0045 ,46.1233 ,46.2419 ,46.3602 ,46.4782 ,46.596 ,46.7135 ,46.8308 ,46.9479 ,47.0646 ,47.1812 ,47.2975 ,47.4135 ,47.5293 ,47.6448 ,47.7601 ,47.8752 ,47.99 ,48.1046 ,48.219 ,48.3331 ,48.4469 ,48.5606 ,48.674 ,48.7871 ,48.9001 ,49.0128 ,49.1252 ,49.2375 ,49.3495 ,49.4613 ,49.5729 ,49.6842 ,49.7953 ,49.9062 ,50.0169 ,50.1273 ,50.2375 ,50.3475 ,50.4573 ,50.5669 ,50.6763 ,50.7854 ,50.8943 ,51.003 ,51.1116 ,51.2198 ,51.3279 ,51.4358 ,51.5434 ,51.6509 ,51.7581 ,51.8652 ,51.972 ,52.0786 ,52.1851 ,52.2913 ,52.3973 ,52.5031 ,52.6087 ,52.7141 ,52.8193 ,52.9244 ,53.0292 ,53.1338 ,53.2382 ,53.3425 ,53.4465 ,53.5503 ,53.654 ,53.7574 ,53.8607 ,53.9638 ,54.0667 ,54.1694 ,54.2719 ,54.3742 ,54.4763 ,54.5783 ,54.68 ,54.7816 ,54.883 ,54.9842 ,55.0852 ,55.186 ,55.2867 ,55.3872 ,55.4875 ,55.5876 ,55.6875 ,55.7873 ,55.8869 ,55.9863 ,56.0855 ,56.1845 ,56.2834 ,56.3821 ,56.4806 ,56.579 ,56.6772 ,56.7752 ,56.873 ,56.9707 ,57.0681 ,57.1655 ,57.2626 ,57.3596 ,57.4564 ,57.5531 ,57.6495 ,57.7458 ,57.842 ,57.938 ,58.0338 ,58.1294 ,58.2249 ,58.3202 ,58.4154 ,58.5104 ,58.6052 ,58.6999 ,58.7944 ,58.8888 ,58.983 ,59.077 ,59.1709 ,59.2646 ,59.3581 ,59.4515 ,59.5448 ,59.6379 ,59.7308 ,59.8236 ,59.9162 ,60.0087 ,60.101 ,60.1931 ,60.2851 ,60.377 ,60.4687 ,60.5602 ,60.6516 ,60.7429 ,60.834 ,60.9249 ,61.0157 ,61.1064 ,61.1969 ,61.2872 ,61.3774 ,61.4675 ,61.5574 ,61.6472 ,61.7368 ,61.8262 ,61.9156 ,62.0048 ,62.0938 ,62.1827 ,62.2714 ,62.36 ,62.4485 ,62.5368 ,62.625 ,62.7131 ,62.8009 ,62.8887 ,62.9763 ,63.0638 ,63.1511 ,63.2383 ,63.3254 ,63.4123 ,63.4991 ,63.5857 ,63.6723 ,63.7586 ,63.8449 ,63.931 ,64.0169 ,64.1027 ,64.1884 ,64.274 ,64.3594 ,64.4447 ,64.5299 ,64.6149 ,64.6998 ,64.7845 ,64.8692 ,64.9537 ,65.038 ,65.1222 ,65.2063 ,65.2903 ,65.3741 ,65.4579 ,65.5414 ,65.6249 ,65.7082 ,65.7914 ,65.8745 ,65.9574 ,66.0402 ,66.1229 ,66.2054 ,66.2879 ,66.3702 ,66.4523 ,66.5344 ,66.6163 ,66.6981 ,66.7798 ,66.8613 ,66.9428 ,67.0241 ,67.1052 ,67.1863 ,67.2672 ,67.348 ,67.4287 ,67.5093 ,67.5897 ,67.67 ,67.7502 ,67.8303 ,67.9103 ,67.9901 ,68.0698 ,68.1494 ,68.2289 ,68.3083 ,68.3875 ,68.4666 ,68.5456 ,68.6245 ,68.7033 ,68.7819 ,68.8605 ,68.9389 ,69.0172 ,69.0954 ,69.1734 ,69.2514 ,69.3292 ,69.4069 ,69.4845 ,69.562 ,69.6394 ,69.7166 ,69.7938 ,69.8708 ,69.9477 ,70.0245 ,70.1012 ,70.1778 ,70.2543 ,70.3306 ,70.4068 ,70.483 ,70.559 ,70.6349 ,70.7107 ,70.7864 ,70.8619 ,70.9374 ,71.0127 ,71.088 ,71.1631 ,71.2381 ,71.313 ,71.3878 ,71.4625 ,71.5371 ,71.6116 ,71.6859 ,71.7602 ,71.8343 ,71.9084 ,71.9823 ,72.0561 ,72.1299 ,72.2035 ,72.277 ,72.3504 ,72.4237 ,72.4969 ,72.5699 ,72.6429 ,72.7158 ,72.7886 ,72.8612 ,72.9338 ,73.0062 ,73.0786 ,73.1508 ,73.223 ,73.295 ,73.3669 ,73.4388 ,73.5105 ,73.5821 ,73.6536 ,73.725 ,73.7964 ,73.8676 ,73.9387 ,74.0097 ,74.0806 ,74.1514 ,74.2221 ,74.2927 ,74.3632 ,74.4336 ,74.504 ,74.5742 ,74.6443 ,74.7143 ,74.7842 ,74.854 ,74.9237 ,74.9933 ,75.0628 ,75.1322 ,75.2015 ,75.2707 ,75.3399 ,75.4089 ,75.4778 ,75.5466 ,75.6154 ,75.684 ,75.7525 ,75.8209 ,75.8893 ,75.9575 ,76.0257 ,76.0937 ,76.1617 ,76.2295 ,76.2973 ,76.365 ,76.4325 ,76.5 ,76.5674 ,76.6347 ,76.7019 ,76.769 ,76.836 ,76.9029 ,76.9697 ,77.0364 ,77.103 ,77.1696 ,77.236 ,77.3024 ,77.3686 ,77.4348 ,77.5008 ,77.5668 ,77.6327 ,77.6985 ,77.7642 ,77.8298 ,77.8953 ,77.9607 ,78.0261 ,78.0913 ,78.1565 ,78.2215 ,78.2865 ,78.3514 ,78.4161 ,78.4808 ,78.5454 ,78.61 ,78.6744 ,78.7387 ,78.803 ,78.8671 ,78.9312 ,78.9952 ,79.0591 ,79.1229 ,79.1866 ,79.2502 ,79.3137 ,79.3772 ,79.4405 ,79.5038 ,79.567 ,79.6301 ,79.6931 ,79.756 ,79.8188 ,79.8816 ,79.9442 ,80.0068 ,80.0693 ,80.1317 ,80.194 ,80.2562 ,80.3184 ,80.3804 ,80.4424 ,80.5043 ,80.5661 ,80.6278 ,80.6894 ,80.7509 ,80.8124 ,80.8737 ,80.935 ,80.9962 ,81.0573 ,81.1184 ,81.1793 ,81.2402 ,81.3009 ,81.3616 ,81.4222 ,81.4828 ,81.5432 ,81.6036 ,81.6638 ,81.724 ,81.7841 ,81.8441 ,81.9041 ,81.9639 ,82.0237 ,82.0834 ,82.143 ,82.2025 ,82.262 ,82.3213 ,82.3806 ,82.4398 ,82.4989 ,82.558 ,82.6169 ,82.6758 ,82.7346 ,82.7933 ,82.8519 ,82.9105 ,82.9689 ,83.0273 ,83.0856 ,83.1438 ,83.202 ,83.26 ,83.318 ,83.3759 ,83.4337 ,83.4915 ,83.5492 ,83.6067 ,83.6642 ,83.7217 ,83.779 ,83.8363 ,83.8935 ,83.9506 ,84.0076 ,84.0645 ,84.1214 ,84.1782 ,84.2349 ,84.2916 ,84.3481 ,84.4046 ,84.461 ,84.5173 ,84.5736 ,84.6297 ,84.6858 ,84.7418 ,84.7978 ,84.8536 ,84.9094 ,84.9651 ,85.0207 ,85.0763 ,85.1318 ,85.1872 ,85.2425 ,85.2977 ,85.3529 ,85.408 ,85.463 ,85.5179 ,85.5728 ,85.6276 ,85.6823 ,85.7369 ,85.7915 ,85.846 ,85.9004 ,85.9547 ,86.009 ,86.0631 ,86.1172 ,86.1713 ,86.2252 ,86.2791 ,86.3329 ,86.3867 ,86.4403 ,86.4939 ,86.5474 ,86.6008 ,86.6542 ,86.7075 ,86.7607 ,86.8138 ,86.8669 ,86.9199 ,86.9728 ,87.0257 ,87.0784 ,87.1311 ,87.1838 ,87.2363 ,87.2888 ,87.3412 ,87.3935 ,87.4458 ,87.498 ,87.5501 ,87.6021 ,87.6541 ,87.706 ,87.7578 ,87.8096 ,87.8612 ,87.9128 ,87.9644 ,88.0158 ,88.0672 ,88.1186 ,88.1698 ,88.221 ,88.2721 ,88.3231 ,88.3741 ,88.425 ,88.4758 ,88.5266 ,88.5772 ,88.6278 ,88.6784 ,88.7288 ,88.7792 ,88.8296 ,88.8798 ,88.93 ,88.9801 ,89.0302 ,89.0801 ,89.13 ,89.1799 ,89.2296 ,89.2793 ,89.329 ,89.3785 ,89.428 ,89.4774 ,89.5268 ,89.576 ,89.6252 ,89.6744 ,89.7235 ,89.7725 ,89.8214 ,89.8702 ,89.919 ,89.9678 ,90.0164 ,90.065 ,90.1135 ,90.162 ,90.2104 ,90.2587 ,90.3069 ,90.3551 ,90.4032 ,90.4512 ,90.4992 ,90.5471 ,90.5949 ,90.6427 ,90.6904 ,90.7381 ,90.7856 ,90.8331 ,90.8805 ,90.9279 ,90.9752 ,91.0224 ,91.0696 ,91.1167 ,91.1637 ,91.2107 ,91.2576 ,91.3044 ,91.3512 ,91.3979 ,91.4445 ,91.491 ,91.5375 ,91.584 ,91.6303 ,91.6766 ,91.7229 ,91.769 ,91.8151 ,91.8611 ,91.9071 ,91.953 ,91.9988 ,92.0446 ,92.0903 ,92.136 ,92.1815 ,92.227 ,92.2725 ,92.3178 ,92.3632 ,92.4084 ,92.4536 ,92.4987 ,92.5437 ,92.5887 ,92.6336 ,92.6785 ,92.7233 ,92.768 ,92.8127 ,92.8573 ,92.9018 ,92.9463 ,92.9907 ,93.035 ,93.0793 ,93.1235 ,93.1676 ,93.2117 ,93.2557 ,93.2997 ,93.3436 ,93.3874 ,93.4312 ,93.4749 ,93.5185 ,93.5621 ,93.6056 ,93.649 ,93.6924 ,93.7357 ,93.779 ,93.8222 ,93.8653 ,93.9084 ,93.9514 ,93.9943 ,94.0372 ,94.08 ,94.1227 ,94.1654 ,94.2081 ,94.2506 ,94.2931 ,94.3356 ,94.3779 ,94.4202 ,94.4625 ,94.5047 ,94.5468 ,94.5889 ,94.6309 ,94.6728 ,94.7147 ,94.7565 ,94.7982 ,94.8399 ,94.8816 ,94.9231 ,94.9646 ,95.0061 ,95.0475 ,95.0888 ,95.13 ,95.1712 ,95.2124 ,95.2534 ,95.2945 ,95.3354 ,95.3763 ,95.4171 ,95.4579 ,95.4986 ,95.5392 ,95.5798 ,95.6204 ,95.6608 ,95.7012 ,95.7416 ,95.7818 ,95.8221 ,95.8622 ,95.9023 ,95.9424 ,95.9823 ,96.0223 ,96.0621 ,96.1019 ,96.1417 ,96.1813 ,96.2209 ,96.2605 ,96.3 ,96.4 ,96.5 ,96.6 ,96.7 ,96.8 ,96.9 ,97 ,97.1 ,97.2 ,97.3 ,97.4 ,97.5 ,97.6 ,97.7 ,97.8 ,97.9 ,98 ,98.1 ,98.2 ,98.3 ,98.4 ,98.5 ,98.6 ,98.7 ,98.8 ,98.9 ,99 ,99.1 ,99.2 ,99.3 ,99.4 ,99.5 ,99.6 ,99.7 ,99.8 ,99.9 ,100]; 
plot(x,y, "color", 'r');

#axis('equal');