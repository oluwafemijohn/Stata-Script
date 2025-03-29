use "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\Abiola_seyi's friend_data 3.dta"
log using "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\abiola_seyi f3.log"
clear
use "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\Abiola_seyi's friend_data 3.dta"
tab v013
tab age
order age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children number_children_lost number_of_living_children media_exp women_autonomy place_residence region h21_1 h32z_1 no_treatment no_autonomy1 no_autonomy2 no_autonomy3 no_autonomy4 no_autonomy
tab number_of_children_lost
global Demo " age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children number_children_lost number_of_living_children media_exp place_residence region"
foreach demo of global Demo {
tab `demo' no_autonomy1, row 
}
tab no_autonomy1
foreach demo of global Demo {
tab `demo' no_autonomy1, row 
}
foreach demo of global Demo {
tab `demo' no_autonomy1, row chi2
tab `demo' no_autonomy2, row chi2
tab `demo' no_autonomy3, row chi2
tab `demo' no_autonomy4, row chi2
}
tab no_autonomy4
foreach demo of global Demo {
asdoc tab `demo' no_autonomy1, row 
}
foreach demo of global Demo {
asdoc tab `demo' no_autonomy2, row 
}
foreach demo of global Demo {
asdoc tab `demo' no_autonomy3, row 
}
foreach demo of global Demo {
asdoc tab `demo' no_autonomy4, row 
}
tab age no_autonomy1
tab age no_autonomy1, row
tab age no_autonomy2, row
tab age no_autonomy3, row
tab age no_autonomy4, row
foreach demo of global Demo {
asdoc tab `demo' women_autonomy, row chi2 
}
tab women_autonomy
save "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\Abiola_seyi's friend_data 3.dta", replace
save "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\Abiola_seyi's friend_data 3.dta", replace
clear
use "C:\Users\user\Desktop\NDHS\NGIR7AFL.DTA"
set maxvar 12000
set maxvar 12000
use "C:\Users\user\Desktop\NDHS\NGIR7AFL.DTA"
set maxvar 12000
clear matrix
set maxvar 12000
use "C:\Users\user\Desktop\NDHS\NGIR7AFL.DTA"
ta v743a
ta v743a
ta v743a v501, chi2 row
ta v501 v743a, chi2 row
ta v501 v850a, chi2 row
clear
use "C:\Users\user\Desktop\Contract Project\ABIOLA EHINFUN\Abiola_seyi's friend_data 3.dta"
global Demo " age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children number_children_lost number_of_living_children media_exp place_residence women_autonomy no_autonomy"
by year, sort: foreach demo of global Demo {
tab `demo' no_treatment , row chi2
}
by region, sort: foreach demo of global Demo {
tab `demo' no_treatment , row chi2
}
by region, sort: tab `demo' no_treatment , row chi2
by region, sort: tab `demo' no_treatment , chi2
by region, sort: tab `demo' no_treatment
tab `demo' no_treatment if region==1
foreach demo of global Demo {
tab `demo' no_treatment , row 
} if region==1
foreach demo of global Demo {
tab `demo' no_treatment , row chi2 if region==1
}
foreach demo of global Demo {
by region, sort: tab `demo' no_treatment , row chi2
}
foreach demo of global Demo {
asdoc by region, sort: tab `demo' no_treatment , row chi2
}
foreach demo of global Demo {
by region, sort: asdoc tab `demo' no_treatment , row chi2
}
tab region
tab age no_treatment if region==1, row chi2
tab age no_treatment if region==2, row chi2
tab age no_treatment if region==3, row chi2
tab age no_treatment if region==6, row chi2
tab maternal_education no_treatment if region==6, row chi2
tab maternal_education no_treatment if region==1, row chi2
tab maternal_education no_treatment if region==1, row chi2
