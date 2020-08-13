##quit rate segments

setwd("C:/Users/esingh/Documents/qnbp/eval18/data/outcomes")

load("qrdata1517.Rda")


qrdata1 <-  subset(qrdata1517, select=-c(clnt_id.x,program_id,start_date.x,start_time.x,end_date.x, end_time.x ,quit_attempts2,
		operator, actvty_resn_bill.x,intake,actvty_rslt.x,actvty_detail,mbr_id,language,fsa,message_consent,email_consent,call_type, action_name,
		sexual1,ethnic_type1,gender1,relation1,education1,cigs_per_day1,cigs_per_day2, time_to_first1,coaching_call_num ,currently_cigs,
							 materials, fax_recv_from,fax_recv_date, holding_field_desc, frequency1,srs_degree_heard,srs_issues_worked,
							srs_how_well_approach,srs_rate_overall,srs_meets_needs,srs_recommend,ivr_smoke_free, ivr_info_withdrawl,ivr_info_motivations,
							 ivr_info_negative_moods,ivr_info_cravings,ivr_info_stress,ivr_time_since_last, ivr_medications,ivr_difficulty,
							  ivr_cigs_per_day,ivr_time_to_first, ivr_plan_to_quit,ivr_call_result,  Result225, gr_session,
							  gr_method_of_contact,gr_howheard1,gr_howheard2,gr_howheard3,gr_howheard4,
							  gr_howheard5,gr_howheard6,gr_howheard7,gr_howheard8,gr_quitdate,gr_conf_level,gr_smoking_status,
						ENDSFU1, ENDSFU2, ENDSFU3, ENDSFU4, ENDSFU5,hradd,next.date,before.date,diff,utype,sdt.x,edt,clnt_id.y,intake_date,actvty_resn_bill.y,
							actvty_resn.y, actvty_resn_desc.y,actvty_rslt.y,outcome))

which( colnames(qrdata1)=="7MATTMPT" )

names(qrdata1)[99] <- "satt"
names(qrdata1)[100] <- "sresult"
names(qrdata1)[101] <- "sstatus"

qrdata2 <- subset(qrdata1, select=-c(psa_division,actvty_type,srce_type,ENDS1,ENDS2,ENDS3,ENDS4,ENDS5,satt,sresult,sstatus,actvty_resn.x,actvty_resn_desc.x,caseactvty_id.y,
			sdt.y,fptime,day7))

which( colnames(qrdata2)=="start_date.y" )

qrdata3 <- qrdata2[c(1,2,29,30,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,
				31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,
				58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87)]

names(qrdata3)[2] <- "caseactvty_id"
names(qrdata3)[3] <- "en_start"
names(qrdata3)[4] <- "en_end"
names(qrdata3)[31] <- "sr_start_date"
names(qrdata3)[32] <- "sr_start_time"
names(qrdata3)[33] <- "sr_end_date"
names(qrdata3)[34] <- "sr_end_time"

write.csv(qrdata3,"qrdata3.csv")

