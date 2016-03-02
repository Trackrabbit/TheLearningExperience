SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyAFA] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255) select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '' if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40100 ( [RPRTNAME],[REPORTID],[RPRTTYPE],[CLCFRPRT],[LSTMODIF],[NOTEINDX] ) select [RPRTNAME],[REPORTID],[RPRTTYPE],[CLCFRPRT],[LSTMODIF],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..AF40100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40101' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40101 ( [REPORTID],[MNHDRCNT],[MNFTRCNT],[SHDRCNT],[SFTRCNT],[ROWCNT1], [COLCNT],[SHDRPCNT],[SFTRPCNT],[MNHDRFLG],[MNFTRFLG],[SHDRFLAG], [SFTRFLAG],[MNHDRSIZ],[MNFTRSIZ],[SHDRSIZE_1],[SHDRSIZE_2],[SHDRSIZE_3], [SHDRSIZE_4],[SHDRSIZE_5],[SFTRSIZE_1],[SFTRSIZE_2],[SFTRSIZE_3],[SFTRSIZE_4], [SFTRSIZE_5],[SHDROPT_1],[SHDROPT_2],[SHDROPT_3],[SHDROPT_4],[SHDROPT_5], [SHDRPRT_1],[SHDRPRT_2],[SHDRPRT_3],[SHDRPRT_4],[SHDRPRT_5],[SFTROPT_1], [SFTROPT_2],[SFTROPT_3],[SFTROPT_4],[SFTROPT_5],[SFTRPRT_1],[SFTRPRT_2], [SFTRPRT_3],[SFTRPRT_4],[SFTRPRT_5],[COLHDCNT],[COLDHSIZ_1],[COLDHSIZ_2], [COLDHSIZ_3],[COLDHSIZ_4],[COLDHSIZ_5],[COLDHSIZ_6],[RTOTLSIZ],[COLTOSIZ], [COLOFSIZ],[LFTMARGN],[RTMARGIN],[TOPMARGN],[BOTMARGN] ) select [REPORTID],[MNHDRCNT],[MNFTRCNT],[SHDRCNT],[SFTRCNT],[ROWCNT1], [COLCNT],[SHDRPCNT],[SFTRPCNT],[MNHDRFLG],[MNFTRFLG],[SHDRFLAG], [SFTRFLAG],[MNHDRSIZ],[MNFTRSIZ],[SHDRSIZE_1],[SHDRSIZE_2],[SHDRSIZE_3], [SHDRSIZE_4],[SHDRSIZE_5],[SFTRSIZE_1],[SFTRSIZE_2],[SFTRSIZE_3],[SFTRSIZE_4], [SFTRSIZE_5],[SHDROPT_1],[SHDROPT_2],[SHDROPT_3],[SHDROPT_4],[SHDROPT_5], [SHDRPRT_1],[SHDRPRT_2],[SHDRPRT_3],[SHDRPRT_4],[SHDRPRT_5],[SFTROPT_1], [SFTROPT_2],[SFTROPT_3],[SFTROPT_4],[SFTROPT_5],[SFTRPRT_1],[SFTRPRT_2], [SFTRPRT_3],[SFTRPRT_4],[SFTRPRT_5],[COLHDCNT],[COLDHSIZ_1],[COLDHSIZ_2], [COLDHSIZ_3],[COLDHSIZ_4],[COLDHSIZ_5],[COLDHSIZ_6],[RTOTLSIZ],[COLTOSIZ], [COLOFSIZ],[LFTMARGN],[RTMARGIN],[TOPMARGN],[BOTMARGN] from ' + rtrim(@I_vFromCompany) + '..AF40101 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40102' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40102 ( [REPORTID],[HDRFTRTY],[FLDNUM],[FLDPOSX1],[FLDPOSY1],[FLDPOSX2], [FLDPOSY2],[FLDTYPE],[FLDFRMAT],[SBHSBFIN],[FLDOPT],[FLDOPT2], [FLDALIGN],[FLDFTFML],[FLDFTSIZ],[FLDSTYLE_1],[FLDSTYLE_2],[FLDSTYLE_3], [FLDSTYLE_4],[FLDSTYLE_5],[FLDSTYLE_6],[FLDVALUE],[FLDVALU2],[FLDPRNAM] ) select [REPORTID],[HDRFTRTY],[FLDNUM],[FLDPOSX1],[FLDPOSY1],[FLDPOSX2], [FLDPOSY2],[FLDTYPE],[FLDFRMAT],[SBHSBFIN],[FLDOPT],[FLDOPT2], [FLDALIGN],[FLDFTFML],[FLDFTSIZ],[FLDSTYLE_1],[FLDSTYLE_2],[FLDSTYLE_3], [FLDSTYLE_4],[FLDSTYLE_5],[FLDSTYLE_6],[FLDVALUE],[FLDVALU2],[FLDPRNAM] from ' + rtrim(@I_vFromCompany) + '..AF40102 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40103' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40103 ( [REPORTID],[COLNUM],[CLTKNCNT],[COLTYPE],[COLSIZE],[COLOMCNT], [COLOFMRK_1],[COLOFMRK_2],[COLOFMRK_3],[COLOFMRK_4],[HIDEFLAG],[TEXTVALU], [STPERIOD],[ENDPEROD],[AMNTFROM],[HISTYEAR],[BUDID],[PRTSIGN], [PRTCOMMA],[PRTPCENT],[PRTTEXT],[ROUNDOPT],[HEADALIN],[HDFTFMLY], [HDFTSIZE],[HEDSTYLE_1],[HEDSTYLE_2],[HEDSTYLE_3],[HEDSTYLE_4],[HEDSTYLE_5], [HEDSTYLE_6],[HEADTYPE_1],[HEADTYPE_2],[HEADTYPE_3],[HEADTYPE_4],[HEADTYPE_5], [HEADTYPE_6],[HEDFRMAT_1],[HEDFRMAT_2],[HEDFRMAT_3],[HEDFRMAT_4],[HEDFRMAT_5], [HEDFRMAT_6],[HEADOPT_1],[HEADOPT_2],[HEADOPT_3],[HEADOPT_4],[HEADOPT_5], [HEADOPT_6],[HEADOPT2_1],[HEADOPT2_2],[HEADOPT2_3],[HEADOPT2_4],[HEADOPT2_5], [HEADOPT2_6],[COLHDNG_1],[COLHDNG_2],[COLHDNG_3],[COLHDNG_4],[COLHDNG_5], [COLHDNG_6],[COLHDNG2_1],[COLHDNG2_2],[COLHDNG2_3],[COLHDNG2_4],[COLHDNG2_5], [COLHDNG2_6],[ALGNOFST],[COLEXPER],[NOTEINDX]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[SEGFROM_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = rtrim(@cStatement3)+rtrim(','+'[SEGTO_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement4 = ' ) select [REPORTID],[COLNUM],[CLTKNCNT],[COLTYPE],[COLSIZE],[COLOMCNT], [COLOFMRK_1],[COLOFMRK_2],[COLOFMRK_3],[COLOFMRK_4],[HIDEFLAG],[TEXTVALU], [STPERIOD],[ENDPEROD],[AMNTFROM],[HISTYEAR],[BUDID],[PRTSIGN], [PRTCOMMA],[PRTPCENT],[PRTTEXT],[ROUNDOPT],[HEADALIN],[HDFTFMLY], [HDFTSIZE],[HEDSTYLE_1],[HEDSTYLE_2],[HEDSTYLE_3],[HEDSTYLE_4],[HEDSTYLE_5], [HEDSTYLE_6],[HEADTYPE_1],[HEADTYPE_2],[HEADTYPE_3],[HEADTYPE_4],[HEADTYPE_5], [HEADTYPE_6],[HEDFRMAT_1],[HEDFRMAT_2],[HEDFRMAT_3],[HEDFRMAT_4],[HEDFRMAT_5], [HEDFRMAT_6],[HEADOPT_1],[HEADOPT_2],[HEADOPT_3],[HEADOPT_4],[HEADOPT_5], [HEADOPT_6],[HEADOPT2_1],[HEADOPT2_2],[HEADOPT2_3],[HEADOPT2_4],[HEADOPT2_5], [HEADOPT2_6],[COLHDNG_1],[COLHDNG_2],[COLHDNG_3],[COLHDNG_4],[COLHDNG_5], [COLHDNG_6],[COLHDNG2_1],[COLHDNG2_2],[COLHDNG2_3],[COLHDNG2_4],[COLHDNG2_5], [COLHDNG2_6],[ALGNOFST],[COLEXPER],[NOTEINDX]' select @cStatement5 = rtrim(@cStatement5)+rtrim(','+'[SEGFROM_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement6 = rtrim(@cStatement6)+rtrim(','+'[SEGTO_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement7 = ' from ' + rtrim(@I_vFromCompany) + '..AF40103 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6+@cStatement7) select @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '' select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40104' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40104 ( [REPORTID],[CLCOLNUM],[TKNODNUM],[TKNTYPE],[TKNVALUE],[TKNDLVAL]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[TKNUNACT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = ' ) select [REPORTID],[CLCOLNUM],[TKNODNUM],[TKNTYPE],[TKNVALUE],[TKNDLVAL]' select @cStatement4 = rtrim(@cStatement4)+rtrim(','+'[TKNUNACT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement5 = ' from ' + rtrim(@I_vFromCompany) + '..AF40104 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5) select @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '' select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40105' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40105 ( [REPORTID],[CLCOLNUM],[TKNODNUM],[TKNTYPE],[TKNVALUE],[TKNDLVAL]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[TKNUNACT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = ' ) select [REPORTID],[CLCOLNUM],[TKNODNUM],[TKNTYPE],[TKNVALUE],[TKNDLVAL]' select @cStatement4 = rtrim(@cStatement4)+rtrim(','+'[TKNUNACT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement5 = ' from ' + rtrim(@I_vFromCompany) + '..AF40105 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5) select @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '' select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40106' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40106 ( [REPORTID],[ROWNUMBR],[TOTKNCNT],[ROWTYPE],[ROWSIZE],[ROLUPFLG], [ROWDESC],[SUBSUDID],[TYPCLBAL],[CATNUMBR],[PRTSIGN],[PRTHEDER], [CENTHEDR],[ROWFTFAM],[ROWFTSIZ],[ROWSTYLE_1],[ROWSTYLE_2],[ROWSTYLE_3], [ROWSTYLE_4],[ROWSTYLE_5],[ROWSTYLE_6],[ROFMRKIN_1],[ROFMRKIN_2],[ROFMRKIN_3], [ROFMRKIN_4],[ROFMRKIN_5],[ROFMRKIN_6],[ROFMRKIN_7],[ROFMRKIN_8],[ROFMRKIN_9], [ROFMRKIN_10],[ROFMRKIN_11],[ROFMRKIN_12],[ROFMRKIN_13],[ROFMRKIN_14],[ROFMRKIN_15], [ROFMRKIN_16],[ROFMRKIN_17],[ROFMRKIN_18],[ROFMRKIN_19],[ROFMRKIN_20],[ROFMRKIN_21], [ROFMRKIN_22],[ROFMRKIN_23],[ROFMRKIN_24],[ROFMRKIN_25],[ROFMRKIN_26],[ROFMRKIN_27], [ROFMRKIN_28],[ROFMRKIN_29],[ROFMRKIN_30],[ROFMRKIN_31],[ROFMRKIN_32],[ROFMRKIN_33], [ROFMRKIN_34],[ROFMRKIN_35],[ROFMRKIN_36],[ROFMRKIN_37],[ROFMRKIN_38],[ROFMRKIN_39], [ROFMRKIN_40],[CFLOSCTN],[RWEXPERR],[NOTEINDX]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[STTACCT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = rtrim(@cStatement3)+rtrim(','+'[ENDACCT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement4 = ' ) select [REPORTID],[ROWNUMBR],[TOTKNCNT],[ROWTYPE],[ROWSIZE],[ROLUPFLG], [ROWDESC],[SUBSUDID],[TYPCLBAL],[CATNUMBR],[PRTSIGN],[PRTHEDER], [CENTHEDR],[ROWFTFAM],[ROWFTSIZ],[ROWSTYLE_1],[ROWSTYLE_2],[ROWSTYLE_3], [ROWSTYLE_4],[ROWSTYLE_5],[ROWSTYLE_6],[ROFMRKIN_1],[ROFMRKIN_2],[ROFMRKIN_3], [ROFMRKIN_4],[ROFMRKIN_5],[ROFMRKIN_6],[ROFMRKIN_7],[ROFMRKIN_8],[ROFMRKIN_9], [ROFMRKIN_10],[ROFMRKIN_11],[ROFMRKIN_12],[ROFMRKIN_13],[ROFMRKIN_14],[ROFMRKIN_15], [ROFMRKIN_16],[ROFMRKIN_17],[ROFMRKIN_18],[ROFMRKIN_19],[ROFMRKIN_20],[ROFMRKIN_21], [ROFMRKIN_22],[ROFMRKIN_23],[ROFMRKIN_24],[ROFMRKIN_25],[ROFMRKIN_26],[ROFMRKIN_27], [ROFMRKIN_28],[ROFMRKIN_29],[ROFMRKIN_30],[ROFMRKIN_31],[ROFMRKIN_32],[ROFMRKIN_33], [ROFMRKIN_34],[ROFMRKIN_35],[ROFMRKIN_36],[ROFMRKIN_37],[ROFMRKIN_38],[ROFMRKIN_39], [ROFMRKIN_40],[CFLOSCTN],[RWEXPERR],[NOTEINDX]' select @cStatement5 = rtrim(@cStatement5)+rtrim(','+'[STTACCT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement6 = rtrim(@cStatement6)+rtrim(','+'[ENDACCT_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement7 = ' from ' + rtrim(@I_vFromCompany) + '..AF40106 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6+@cStatement7) select @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '' select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40107' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40107 ( [REPORTID],[TOTRWNUM],[TKNODNUM],[STROWNUM],[ENDRWNUM] ) select [REPORTID],[TOTRWNUM],[TKNODNUM],[STROWNUM],[ENDRWNUM] from ' + rtrim(@I_vFromCompany) + '..AF40107 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40108' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40108 ( [REPORTID],[TOTRWNUM],[MBRWNUM] ) select [REPORTID],[TOTRWNUM],[MBRWNUM] from ' + rtrim(@I_vFromCompany) + '..AF40108 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40109' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40109 ( [FLDPRNAM],[FLDPCTUR] ) select [FLDPRNAM],[FLDPCTUR] from ' + rtrim(@I_vFromCompany) + '..AF40109 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40110' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40110 ( [USERNAME],[SHGRDFLG],[SHCGRFLG],[SHTBARFL],[SCDEFAFL],[SHRWARFL], [SHOFMKFL],[SNPTGRFL],[SHMARFLG],[SHPGBDFL],[SHRLRSFL] ) select [USERNAME],[SHGRDFLG],[SHCGRFLG],[SHTBARFL],[SCDEFAFL],[SHRWARFL], [SHOFMKFL],[SNPTGRFL],[SHMARFLG],[SHPGBDFL],[SHRLRSFL] from ' + rtrim(@I_vFromCompany) + '..AF40110 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40200' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40200 ( [REPORTID],[RptOptID],[ROWNMBR],[NMBRACTS] ) select [REPORTID],[RptOptID],[ROWNMBR],[NMBRACTS] from ' + rtrim(@I_vFromCompany) + '..AF40200 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..AF40201' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..AF40201 ( [REPORTID],[RptOptID],[ROWNMBR],[SEQNUMBR]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[ACTARR1_1_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = rtrim(@cStatement3)+rtrim(','+'[ACTARR1_2_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement4 = rtrim(@cStatement4)+rtrim(','+'[ACTARR1_3_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement5 = rtrim(@cStatement5)+rtrim(','+'[ACTARR1_4_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement6 = ',[ACTARR2_1_1],[ACTARR2_1_2], [ACTARR2_1_3],[ACTARR2_1_4],[ACTARR2_2_1],[ACTARR2_2_2],[ACTARR2_2_3],[ACTARR2_2_4], [ACTARR2_3_1],[ACTARR2_3_2],[ACTARR2_3_3],[ACTARR2_3_4],[ACTARR2_4_1],[ACTARR2_4_2], [ACTARR2_4_3],[ACTARR2_4_4] ) select [REPORTID],[RptOptID],[ROWNMBR],[SEQNUMBR]' select @cStatement7 = rtrim(@cStatement7)+rtrim(','+'[ACTARR1_1_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement8 = rtrim(@cStatement8)+rtrim(','+'[ACTARR1_2_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement9 = rtrim(@cStatement9)+rtrim(','+'[ACTARR1_3_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement10 = rtrim(@cStatement10)+rtrim(','+'[ACTARR1_4_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement11 = ',[ACTARR2_1_1],[ACTARR2_1_2], [ACTARR2_1_3],[ACTARR2_1_4],[ACTARR2_2_1],[ACTARR2_2_2],[ACTARR2_2_3],[ACTARR2_2_4], [ACTARR2_3_1],[ACTARR2_3_2],[ACTARR2_3_3],[ACTARR2_3_4],[ACTARR2_4_1],[ACTARR2_4_2], [ACTARR2_4_3],[ACTARR2_4_4] from ' + rtrim(@I_vFromCompany) + '..AF40201 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6+@cStatement7+@cStatement8+@cStatement9+@cStatement10+@cStatement11) end return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyAFA] TO [DYNGRP]
GO