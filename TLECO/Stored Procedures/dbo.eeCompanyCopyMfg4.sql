SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyMfg4] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255), @DestCMPANYID smallint, @SourcCMPANYID smallint select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '', @DestCMPANYID = 0, @SourcCMPANYID = 0 select @DestCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @I_vToCompany select @SourcCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @I_vFromCompany if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010015' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010015 ( [WCID_I],[EFFECTIVEDATE_I],[EMPLOYEEHOURSSUM_I],[EMPLOYEEHOURSOVERA_I],[EMPLOYEEHOURSOVERT_I],[MACHINEHOURSSUM_I], [MACHINEHOURSOVERAG_I],[MACHINEHOURSOVERTI_I],[WCSTARTTIME_I],[WCPRODUCTIVEHOURS_I],[USERID],[DATEOFLASTCHANGE_I], [CBCELL_I],[NUMBERSHIFTS_I],[NOTEINDX] ) select [WCID_I],[EFFECTIVEDATE_I],[EMPLOYEEHOURSSUM_I],[EMPLOYEEHOURSOVERA_I],[EMPLOYEEHOURSOVERT_I],[MACHINEHOURSSUM_I], [MACHINEHOURSOVERAG_I],[MACHINEHOURSOVERTI_I],[WCSTARTTIME_I],[WCPRODUCTIVEHOURS_I],[USERID],[DATEOFLASTCHANGE_I], [CBCELL_I],[NUMBERSHIFTS_I],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..WC010015 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010100 ( [WCID_I],[EMPLOYID],[LABORTIME_I],[EFFECTIVEDATE_I],[EFFICIENCYPERCENT_I] ) select [WCID_I],[EMPLOYID],[LABORTIME_I],[EFFECTIVEDATE_I],[EFFICIENCYPERCENT_I] from ' + rtrim(@I_vFromCompany) + '..WC010100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010200' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010200 ( [WCID_I],[MACHINEID_I],[MACHINETIME_I],[EFFECTIVEDATE_I],[UTILIZATION_I],[EFFICIENCYPERCENT_I] ) select [WCID_I],[MACHINEID_I],[MACHINETIME_I],[EFFECTIVEDATE_I],[UTILIZATION_I],[EFFICIENCYPERCENT_I] from ' + rtrim(@I_vFromCompany) + '..WC010200 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010300' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010300 ( [WCID_I],[EMPLOYID],[ABSENCESTARTDATE_I],[ABSENCEENDDATE_I],[LENGTHOFABSENCE_I],[LASTNAME], [FRSTNAME] ) select [WCID_I],[EMPLOYID],[ABSENCESTARTDATE_I],[ABSENCEENDDATE_I],[LENGTHOFABSENCE_I],[LASTNAME], [FRSTNAME] from ' + rtrim(@I_vFromCompany) + '..WC010300 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010400' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010400 ( [EFFECTIVEDATE_I],[WCID_I],[DWNONWKNDS] ) select [EFFECTIVEDATE_I],[WCID_I],[DWNONWKNDS] from ' + rtrim(@I_vFromCompany) + '..WC010400 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010500' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010500 ( [WCID_I],[DOWNDAYS_I] ) select [WCID_I],[DOWNDAYS_I] from ' + rtrim(@I_vFromCompany) + '..WC010500 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010600' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010600 ( [WCALTERNATEPREFS_I],[WCID_I],[WCIDALT_I],[EFFECTIVEDATE_I] ) select [WCALTERNATEPREFS_I],[WCID_I],[WCIDALT_I],[EFFECTIVEDATE_I] from ' + rtrim(@I_vFromCompany) + '..WC010600 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010714' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010714 ( [WCID_I],[OPCODE_I],[OPDESC_I],[SETUPTIME_I],[MOVETIME_I],[MACHINETIME_I], [CYCLETIME_I],[LABORTIME_I],[QUEUETIME_I],[LABORCODE_I],[LABORCODE2_I],[MACHINEID_I], [DWGNUM_I],[TAPENUMBER_I],[TOOLID_I],[NUMOFEMP],[MULTIPLEEMPLOYEEOP_I],[LASTSEQUENCETODAY_I], [USERDEF1],[USERDEF2],[CHANGEDATE_I],[USERID],[MFGNOTEINDEX_I],[AUTOBACKFLUSHLABOR_I], [AUTOBACKMACHINE_I] ) select [WCID_I],[OPCODE_I],[OPDESC_I],[SETUPTIME_I],[MOVETIME_I],[MACHINETIME_I], [CYCLETIME_I],[LABORTIME_I],[QUEUETIME_I],[LABORCODE_I],[LABORCODE2_I],[MACHINEID_I], [DWGNUM_I],[TAPENUMBER_I],[TOOLID_I],[NUMOFEMP],[MULTIPLEEMPLOYEEOP_I],[LASTSEQUENCETODAY_I], [USERDEF1],[USERDEF2],[CHANGEDATE_I],[USERID],[MFGNOTEINDEX_I],[AUTOBACKFLUSHLABOR_I], [AUTOBACKMACHINE_I] from ' + rtrim(@I_vFromCompany) + '..WC010714 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010800' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010800 ( [WCID_I],[UPDAYS_I] ) select [WCID_I],[UPDAYS_I] from ' + rtrim(@I_vFromCompany) + '..WC010800 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC010931' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC010931 ( [WCID_I],[WCDESC_I],[CMPNYNAM],[DEPRTMNT],[OUTSOURCED_I],[VENDORID], [SERVITEMNUM],[POOFFSETDAYS] ) select [WCID_I],[WCDESC_I],[CMPNYNAM],[DEPRTMNT],[OUTSOURCED_I],[VENDORID], [SERVITEMNUM],[POOFFSETDAYS] from ' + rtrim(@I_vFromCompany) + '..WC010931 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WC01100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WC01100 ( [WCID_I],[SKILLSETNUMBER_I] ) select [WCID_I],[SKILLSETNUMBER_I] from ' + rtrim(@I_vFromCompany) + '..WC01100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WCTE0000' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WCTE0000 ( [TEMPLATENAME_I],[NOTEINDX],[WCID_I],[OPCODE_I] ) select [TEMPLATENAME_I],[NOTEINDX],[WCID_I],[OPCODE_I] from ' + rtrim(@I_vFromCompany) + '..WCTE0000 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WCTEHD00' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WCTEHD00 ( [TEMPLATENAME_I],[WCID_I],[OPCODE_I] ) select [TEMPLATENAME_I],[WCID_I],[OPCODE_I] from ' + rtrim(@I_vFromCompany) + '..WCTEHD00 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WCUF0130' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WCUF0130 ( [REPORTOPTION_I],[REPORTINDEX_I],[SORTBY],[SORTBY_I],[ASKECHTM],[INCLGNDS], [PRNTOFIL],[PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE], [STARTWCID_I],[STARTOPCODE_I],[STRTDATE],[STARTWCDESC_I],[STRTDEPT],[EMPIDBGN], [EMPIDEND],[EMPLOYEEOR_MACHINE_I],[ENDDATE],[ENDDEPT],[ENDOPCODE_I],[ENDWCID_I], [ENDWCDESC_I],[RSRCID] ) select [REPORTOPTION_I],[REPORTINDEX_I],[SORTBY],[SORTBY_I],[ASKECHTM],[INCLGNDS], [PRNTOFIL],[PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE], [STARTWCID_I],[STARTOPCODE_I],[STRTDATE],[STARTWCDESC_I],[STRTDEPT],[EMPIDBGN], [EMPIDEND],[EMPLOYEEOR_MACHINE_I],[ENDDATE],[ENDDEPT],[ENDOPCODE_I],[ENDWCID_I], [ENDWCDESC_I],[RSRCID] from ' + rtrim(@I_vFromCompany) + '..WCUF0130 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WOUF0132' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WOUF0132 ( [REPORTINDEX_I],[REPORTOPTION_I],[SORTBY],[ASKECHTM],[INCLGNDS],[PRNTOFIL], [PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[MANORDERSTART_I], [MANORDEREND_I],[STTITNUM],[ENITMNBR],[ROUTINGNAMESTART_I],[ROUTINGNAMEEND_I],[STRTDATE], [ENDDATE],[RTSEQNUMSTART_I],[RTSEQNUMEND_I],[START_MO_DESCRIPTION],[END_MO_DESCRIPTION],[Start_MO_Status], [End_MO_Status],[STARTWCID_I],[ENDWCID_I],[STRTMCID],[ENDMACID],[Start_MRP_Issue_Date], [End_MRP_Issue_Date],[STVNDRID],[ENDVNDID],[START_PICK_NUMBER],[END_PICK_NUMBER],[STTUSRID], [ENDUSRID],[STARTMORECEIPTNUMBER],[ENDMORECEIPTNUMBER],[RSRCID],[CB_I],[VIEWTYPE], [QTYTYPE],[CALCMTHD] ) select [REPORTINDEX_I],[REPORTOPTION_I],[SORTBY],[ASKECHTM],[INCLGNDS],[PRNTOFIL], [PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[MANORDERSTART_I], [MANORDEREND_I],[STTITNUM],[ENITMNBR],[ROUTINGNAMESTART_I],[ROUTINGNAMEEND_I],[STRTDATE], [ENDDATE],[RTSEQNUMSTART_I],[RTSEQNUMEND_I],[START_MO_DESCRIPTION],[END_MO_DESCRIPTION],[Start_MO_Status], [End_MO_Status],[STARTWCID_I],[ENDWCID_I],[STRTMCID],[ENDMACID],[Start_MRP_Issue_Date], [End_MRP_Issue_Date],[STVNDRID],[ENDVNDID],[START_PICK_NUMBER],[END_PICK_NUMBER],[STTUSRID], [ENDUSRID],[STARTMORECEIPTNUMBER],[ENDMORECEIPTNUMBER],[RSRCID],[CB_I],[VIEWTYPE], [QTYTYPE],[CALCMTHD] from ' + rtrim(@I_vFromCompany) + '..WOUF0132 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WPPS0114' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WPPS0114 ( [CMPANYID],[CBXDAEMONOPENFORM_I],[CLEARDATES_I],[CLEARTIMES_I],[CLEARSEQUENCE_I],[CLEAREMPMACH_I], [CLEARLABORCODE_I],[COPYFROMFINOST_I],[INCREMENTSEQUENCE_I],[CLEARMO_I],[Use_Standard_Labor],[APPLYOSRCCOST], [MARKOSRCDONE],[OSRCCOSTBUCKET],[RENAMEBUCKET],[ALLOWLABORCODE],[ISS_MAT_DONE_SEQ_I],[ENTER_DURATION] ) select [CMPANYID],[CBXDAEMONOPENFORM_I],[CLEARDATES_I],[CLEARTIMES_I],[CLEARSEQUENCE_I],[CLEAREMPMACH_I], [CLEARLABORCODE_I],[COPYFROMFINOST_I],[INCREMENTSEQUENCE_I],[CLEARMO_I],[Use_Standard_Labor],[APPLYOSRCCOST], [MARKOSRCDONE],[OSRCCOSTBUCKET],[RENAMEBUCKET],[ALLOWLABORCODE],[ISS_MAT_DONE_SEQ_I],[ENTER_DURATION] from ' + rtrim(@I_vFromCompany) + '..WPPS0114 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WPPU0114' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WPPU0114 ( [CMPANYID],[USERID],[CBXDAEMONOPENFORM_I],[CLEARDATES_I],[CLEARTIMES_I],[CLEAREMPMACH_I], [CLEARLABORCODE_I],[CLEARSEQUENCE_I],[COPYFROMFINOST_I],[INCREMENTSEQUENCE_I],[CLEARMO_I],[Use_Standard_Labor], [MO_NUMBER_SORT_I] ) select [CMPANYID],[USERID],[CBXDAEMONOPENFORM_I],[CLEARDATES_I],[CLEARTIMES_I],[CLEAREMPMACH_I], [CLEARLABORCODE_I],[CLEARSEQUENCE_I],[COPYFROMFINOST_I],[INCREMENTSEQUENCE_I],[CLEARMO_I],[Use_Standard_Labor], [MO_NUMBER_SORT_I] from ' + rtrim(@I_vFromCompany) + '..WPPU0114 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..WRUF0130' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..WRUF0130 ( [REPORTOPTION_I],[REPORTINDEX_I],[ASKECHTM],[INCLGNDS],[PRNTOFIL],[PRTOPRTR], [PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[STTITNUM],[ENITMNBR], [RTSEQNUMEND_I],[RTSEQNUMSTART_I],[STTLOCCD],[ENLOCNCD],[RTPRIMARY_I],[CBXUSETEXTBUTTONS_I], [SORTBY_I],[STR30DUMMY_I],[MANORDERSTART_I],[MANORDEREND_I],[CB_I],[RSRCID] ) select [REPORTOPTION_I],[REPORTINDEX_I],[ASKECHTM],[INCLGNDS],[PRNTOFIL],[PRTOPRTR], [PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[STTITNUM],[ENITMNBR], [RTSEQNUMEND_I],[RTSEQNUMSTART_I],[STTLOCCD],[ENLOCNCD],[RTPRIMARY_I],[CBXUSETEXTBUTTONS_I], [SORTBY_I],[STR30DUMMY_I],[MANORDERSTART_I],[MANORDEREND_I],[CB_I],[RSRCID] from ' + rtrim(@I_vFromCompany) + '..WRUF0130 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..mops0100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..mops0100 ( [MANUFACTUREORDER_I],[CMPANYID],[Delete_Configured_BOM],[Archive_Configured_BOM],[Remove_Canceled_MO],[Remove_Canceled_MO_Days], [Remove_CF_MO],[Remove_CF_MO_Days],[Remove_LotSerial_MO],[Remove_LotSerial_MO_Days],[MOCloseOption],[OSRCLABEL], [PROCESSSECURITY],[PROCESSSECURITY2],[PICKNUMBER],[MOPRCTNM],[MOCLOSEOPTIONS_1],[MOCLOSEOPTIONS_2], [MOCLOSEOPTIONS_3],[MOCLOSEOPTIONS_4],[MOCLOSEOPTIONS_5],[MOCLOSEOPTIONS_6],[MOCLOSEOPTIONS_7],[MOCLOSEOPTIONS_8], [MOCLOSEOPTIONS_9],[MOCLOSEOPTIONS_10],[MOCLOSEOPTIONS_11],[MOCLOSEOPTIONS_12],[MOCLOSEOPTIONS_13],[MOCLOSEOPTIONS_14], [ALLOCATERELEASED],[COMPLETEMOATCOMPCLOSE],[CLOSEMOATCOMPCLOSE],[REVAL_IN_PROCESS_I],[RECONCILE_IN_PROCESS_I],[PRINT_PICKLIST_NOTES], [ALLOCATE_REV_ISS_I],[FLRSTCKACCNTINDEX],[CBXALLOWNEGATIVEWIP],[MANUALSELECT],[DEF_PICKLIST_SORTBY],[MFGUSEALLCOLLECTED], [MFGUSEALLSETUP],[MFGUSEALLWIP],[LOTSLCTNMTHD],[REQLNKNG],[USE_DEFAULT_BIN] ) select [MANUFACTUREORDER_I],[CMPANYID],[Delete_Configured_BOM],[Archive_Configured_BOM],[Remove_Canceled_MO],[Remove_Canceled_MO_Days], [Remove_CF_MO],[Remove_CF_MO_Days],[Remove_LotSerial_MO],[Remove_LotSerial_MO_Days],[MOCloseOption],[OSRCLABEL], [PROCESSSECURITY],[PROCESSSECURITY2],[PICKNUMBER],[MOPRCTNM],[MOCLOSEOPTIONS_1],[MOCLOSEOPTIONS_2], [MOCLOSEOPTIONS_3],[MOCLOSEOPTIONS_4],[MOCLOSEOPTIONS_5],[MOCLOSEOPTIONS_6],[MOCLOSEOPTIONS_7],[MOCLOSEOPTIONS_8], [MOCLOSEOPTIONS_9],[MOCLOSEOPTIONS_10],[MOCLOSEOPTIONS_11],[MOCLOSEOPTIONS_12],[MOCLOSEOPTIONS_13],[MOCLOSEOPTIONS_14], [ALLOCATERELEASED],[COMPLETEMOATCOMPCLOSE],[CLOSEMOATCOMPCLOSE],[REVAL_IN_PROCESS_I],[RECONCILE_IN_PROCESS_I],[PRINT_PICKLIST_NOTES], [ALLOCATE_REV_ISS_I],[FLRSTCKACCNTINDEX],[CBXALLOWNEGATIVEWIP],[MANUALSELECT],[DEF_PICKLIST_SORTBY],[MFGUSEALLCOLLECTED], [MFGUSEALLSETUP],[MFGUSEALLWIP],[LOTSLCTNMTHD],[REQLNKNG],[USE_DEFAULT_BIN] from ' + rtrim(@I_vFromCompany) + '..mops0100 ' exec(@cStatement) end select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..BMPF0114 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..BMPS0114 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..CO010000 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..COSS0401 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..CT00001 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..CT00002 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..CT00003 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..EC090000 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..ECPS0000 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..ECPU0000 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..JCPS0040 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..MPPS0230 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..MPPU0130 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..PRPF0113 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..QAPS0032 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..RTPS0130 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..RTPU0130 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..WPPS0114 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..WPPU0114 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..mops0100 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyMfg4] TO [DYNGRP]
GO