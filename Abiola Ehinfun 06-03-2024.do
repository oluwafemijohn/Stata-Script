set maxvar 12000
use "C:\Users\User PC\Desktop\NDHS Data\NGIR7AFL.DTA"
log using "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\abiola5.log"
numlabel, a
tab v501
drop if v501==0| v501==3 | v501==4 | v501==5
tab v218
tab v137
drop if v137==0
drop if v218==0
tab h32z_1
ta v501
keep v013 v218 v190 v714 v130 v106 v501 v701 v102 v131 v206 v207 v024 v157 v158 v159 v743a v467b v743d v743b v850a h21_1 h32z_1 v202 v203 v204 v205 v621 v739 v743f v744d v850b v137
gen no_treatment = 0 if h21_1 == 1 | h32z_1== 1
replace no_treatmen = 1 if h21_1 == 0 | h32z_1 == 0
label define no_treatment 0 "no" 1 "yes"
label value no_treatment no_treatment
numlabel, a
tab no_treatment
misstable summarize, all
drop if h21_1==. & h32z_1==.
misstable summarize, all
drop v739
misstable summarize, all
drop if v743f==.
misstable summarize, all
tab v621
drop if v621==.
misstable summarize, all
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset.dta"
recode v013 (1/2=1 "15-24") (3/4=2 "25-34") (5/7=3 "35-49"), gen (age)
tab age
numlabel, a
recode v137 (1/2=1 "One-Two") (3/4=2 "Three-Four") (5/max=3 "Five and above"), gen (number_of_under_5_children)
tab v137
tab number_of_under_5_children
numlabel, a
tab number_of_under_5_children
tab v206
tab v207
drop v206 v207
tab v131
recode v190 (1/2=1 "poor") (3=2 "middle") (4/5=3 "rich"), gen (wealth_index)
recode v130 (1/2=1 "christian") (3=2 "islam")(4/max=3 "others"), gen (religion)
tab v106
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset.dta", replace
tab v701
recode v701 (0=0 "no education") (1=1 "primary") (2=2 "secondary") (3=3 "higher") (8=0 "no education"), gen (partner_education)
rename v501 marital_status
rename v106 maternal_education
rename v714 occupation_status
tab occupation_status
rename v102 place_residence
tab v131
recode v131 (10=1 "yoruba") (6=2 "igbo") (2/3=3 "hausa/fulani") (1=4 "others") (4/5=4 "others") (7/9=4 "others") (96/max=4 "others"), gen (ethnicity)
tab ethnicity
tab v024
rename v024 region
tab v157
tab v158
tab v159
recode v157 (0=0 "no") (1/99=1 "yes"), gen (media_exp1)
browse
drop media_exp1
gen mediaexp1 = v157+v158+v159
tab mediaexp1
recode mediaexp1 (0=0 "no exposure") (1/3=1 "poor exposure") (4/6=2 "good exposure"), gen (media_exposure)
numlabel, a
tab media_exposure
tab v850b
tab v744d
tab v743f
tab v743c
tab v743a
tab v743b
tab v743d
tab v7632a
tab v632a
tab v632
tab v621
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset.dta", replace
clear
use "C:\Users\User PC\Desktop\NDHS Data\NGIR7AFL.DTA"
tab v501
drop if v501==0| v501==3 | v501==4 | v501==5
tab v218
tab v137
drop if v137==0
drop if v218==0
tab h32z_1
ta v501
keep v013 v218 v190 v714 v130 v106 v501 v701 v102 v131 v206 v207 v024 v157 v158 v159 v743a v467b v743d v743b v850a h21_1 h32z_1 v202 v203 v204 v205 v621 v739 v743f v744d v850b v137 v632a v850a
gen no_treatment = 0 if h21_1 == 1 | h32z_1== 1
replace no_treatmen = 1 if h21_1 == 0 | h32z_1 == 0
label define no_treatment 0 "no" 1 "yes"
label value no_treatment no_treatment
numlabel, a
tab no_treatment
misstable summarize, all
drop if h21_1==. & h32z_1==.
misstable summarize, all
drop v739
misstable summarize, all
drop if v743f==.
misstable summarize, all
tab v621
drop if v621==.
misstable summarize, all
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset_05-03-2024.dta"
recode v013 (1/2=1 "15-24") (3/4=2 "25-34") (5/7=3 "35-49"), gen (age)
tab age
numlabel, a
recode v137 (1/2=1 "One-Two") (3/4=2 "Three-Four") (5/max=3 "Five and above"), gen (number_of_under_5_children)
tab v137
tab number_of_under_5_children
numlabel, a
tab number_of_under_5_children
tab v206
tab v207
drop v206 v207
tab v131
recode v190 (1/2=1 "poor") (3=2 "middle") (4/5=3 "rich"), gen (wealth_index)
recode v130 (1/2=1 "christian") (3=2 "islam")(4/max=3 "others"), gen (religion)
tab v106
tab v701
recode v701 (0=0 "no education") (1=1 "primary") (2=2 "secondary") (3=3 "higher") (8=0 "no education"), gen (partner_education)
rename v501 marital_status
rename v106 maternal_education
rename v714 occupation_status
tab occupation_status
rename v102 place_residence
tab v131
recode v131 (10=1 "yoruba") (6=2 "igbo") (2/3=3 "hausa/fulani") (1=4 "others") (4/5=4 "others") (7/9=4 "others") (96/max=4 "others"), gen (ethnicity)
tab ethnicity
tab v024
rename v024 region
tab v157
tab v158
tab v159
recode v157 (0=0 "no") (1/99=1 "yes"), gen (media_exp1)
browse
drop media_exp1
gen mediaexp1 = v157+v158+v159
tab mediaexp1
recode mediaexp1 (0=0 "no exposure") (1/3=1 "poor exposure") (4/6=2 "good exposure"), gen (media_exposure)
numlabel, a
tab media_exposure
tab v850b
tab v744d
tab v743f
tab v743a
tab v743b
tab v743d
tab v632a
tab v850a
misstable summarize, all
drop v632a
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset_05-03-2024.dta", replace
misstable summarize, all
tab maternal_education
drop no_empowerment1
recode maternal_education (1/3=0 "no") (0=1 "yes"), gen (no_empowerment1)
tab no_empowerment1
tab occupation_status
recode occupation_status (0=1 "yes") (1=0 "no"), gen (no_empowerment2)
tab no_empowerment2
tab v621
recode v621 (1=0 "no") (2/max=1 "yes"), gen (no_empowerment3)
tab no_empowerment3
tab v743a
recode v743a (1/2=0 "no") (4/max=1 "yes"), gen (no_empowerment4)
recode v743b (1/2=0 "no") (4/max=1 "yes"), gen (no_empowerment5)
recode v743d (1/2=0 "no") (4/max=1 "yes"), gen (no_empowerment6)
tab v743f
recode v743f (1/2=0 "no") (4/max=1 "yes"), gen (no_empowerment7)
tab v850a
recode v850a (1=0 "no") (0=1 "yes") (8=1 "yes"), gen (no_empowerment8)
tab v850b
recode v850b (1=0 "no") (0=1 "yes") (8=1 "yes"), gen (no_empowerment9)
tab1 no_empowerment1 no_empowerment2 no_empowerment3 no_empowerment4 no_empowerment5 no_empowerment6 no_empowerment7 no_empowerment8 no_empowerment9
numlabel, a
gen no_empowerment = no_empowerment1+ no_empowerment2+ no_empowerment3+ no_empowerment4+ no_empowerment5+ no_empowerment6+ no_empowerment7+ no_empowerment8+ no_empowerment9
sum no_empowerment, d
tab no_empowerment
tab media_exposure
recode no_empowerment (0/3=2 "full") (4/6=1 "partial") (7/9=0 "none"), gen (women_autonomy_empowerment)
numlabel, a
tab women_autonomy_empowerment
recode no_empowerment (0/3=2 "no") (4/max=1 "yes"), gen (no_autonomy_empowerment)
numlabel, a
tab no_autonomy_empowerment
**order age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children**
ta v218
recode v218 (1/2=1 "One-Two") (3/4=2 "Three-Four") (5/max=3 "Five and above"), gen (number_of_living_children)
numlabel, a
tab number_of_living_children
order age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children number_of_living_children media_exposure women_autonomy_empowerment place_residence region
asdoc tab1 age maternal_education partner_education marital_status occupation_status religion wealth_index ethnicity number_of_under_5_children number_of_living_children media_exposure women_autonomy_empowerment place_residence region