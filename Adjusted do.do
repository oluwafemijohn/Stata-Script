use "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset_05-03-2024.dta"
log using "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Adjusted logistic regression 12 04 2024.log"
tab empowerment_status
tab no_empowerment_for_woman
numlabel no_empowerment_for_woman, a
codebook no_empowerment_for_woman
numlabel no_empowerment_for_woman, modify
ta region
logit no_treatment i.age i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.number_of_under_5_children i.number_of_living_children i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman, or allbase if region==1
logit no_treatment i.age i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.number_of_under_5_children i.number_of_living_children i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman if region==1, or allbase
logit no_treatment i.age i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.number_of_under_5_children i.number_of_living_children i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman, or allbase
asdoc logit no_treatment i.age i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.number_of_under_5_children i.number_of_living_children i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman if region==1, or allbase
asdoc logit no_treatment i.age i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.ethnicity i.number_of_under_5_children i.number_of_living_children i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman if region==2, or allbase
asdoc logit no_treatment i.age i.maternal_education i.partner_education i.wealth_index i.ethnicity i.media_exposure i.place_residence i.empowerment_status if region==3, or allbase
asdoc logit no_treatment i.age i.partner_education i.marital_status i.wealth_index i.media i.empowerment_status i.no_empowerment_for_woman if region==4, or allbase
asdoc logit no_treatment i.age i.partner_education i.marital_status i.wealth_index i.media_exposure i.empowerment_status i.no_empowerment_for_woman if region==4, or allbase
asdoc logit no_treatment i.maternal_education i.partner_education i.occupation_status i.religion i.wealth_index i.media_exposure i.place_residence i.empowerment_status i.no_empowerment_for_woman if region==5, or allbase
asdoc logit no_treatment i.maternal_education i.partner_education i.wealth_index i.number_of_living_children i.media_exposure if region==6, or allbase
save "C:\Users\User PC\Desktop\Contract Project\ABIOLA EHINFUN\Abiola Ehinfun_newdataset_05-03-2024.dta", replace
