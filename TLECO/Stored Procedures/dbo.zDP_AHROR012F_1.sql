SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHROR012F_1] (@EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, MAIDENNAME_I, I9ALIENUNTILCB_I, I9CITIZENCB_I, I9LPRESIDENT_I, ISTARTDATE_I, DOCUMENT#A1_I, DOCUMENT#A2_I, DOCUMENT#B_I, DOCUMENT#C_I, DOCUMENTTITLEA_I, DOCUMENTTITLEB_I, DOCUMENTTITLEC_I, EXPIRATIONA1_I, EXPIRATIONA2_I, EXPIRATIONB_I, EXPIRATIONC_I, ISSUEAUTHORITYA_I, ISSUEAUTHORITYB_I, ISSUEAUTHORITYC_I, ALIENADMINNUMBER_I, ALIENNUMBER_I, ALIENUNTILDATE_I, DATEFILED_I, PREPARERSNAME_I, PREPARERADDRESS_I, DATEIN_I, EMPLOYERNAME_I, TITLE1_I, TITLE2_I, BUSNAMEADDR_I, NEWNAME_I, REHIREDATE_I, O3CDATEEXPIRE_I, O3CDOCU#_I, O3CDOCUTITLE_I, DATESIGNED_I, DATEOFLASTCHANGE_I, EXITDATE, REENTRYDATE, i9_Non_Citizen_CB, CCodeDesc, FOREIGNPASSNUMBER, DEX_ROW_ID FROM .AHROR012 ORDER BY EMPID_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, MAIDENNAME_I, I9ALIENUNTILCB_I, I9CITIZENCB_I, I9LPRESIDENT_I, ISTARTDATE_I, DOCUMENT#A1_I, DOCUMENT#A2_I, DOCUMENT#B_I, DOCUMENT#C_I, DOCUMENTTITLEA_I, DOCUMENTTITLEB_I, DOCUMENTTITLEC_I, EXPIRATIONA1_I, EXPIRATIONA2_I, EXPIRATIONB_I, EXPIRATIONC_I, ISSUEAUTHORITYA_I, ISSUEAUTHORITYB_I, ISSUEAUTHORITYC_I, ALIENADMINNUMBER_I, ALIENNUMBER_I, ALIENUNTILDATE_I, DATEFILED_I, PREPARERSNAME_I, PREPARERADDRESS_I, DATEIN_I, EMPLOYERNAME_I, TITLE1_I, TITLE2_I, BUSNAMEADDR_I, NEWNAME_I, REHIREDATE_I, O3CDATEEXPIRE_I, O3CDOCU#_I, O3CDOCUTITLE_I, DATESIGNED_I, DATEOFLASTCHANGE_I, EXITDATE, REENTRYDATE, i9_Non_Citizen_CB, CCodeDesc, FOREIGNPASSNUMBER, DEX_ROW_ID FROM .AHROR012 WHERE EMPID_I = @EMPID_I_RS ORDER BY EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, MAIDENNAME_I, I9ALIENUNTILCB_I, I9CITIZENCB_I, I9LPRESIDENT_I, ISTARTDATE_I, DOCUMENT#A1_I, DOCUMENT#A2_I, DOCUMENT#B_I, DOCUMENT#C_I, DOCUMENTTITLEA_I, DOCUMENTTITLEB_I, DOCUMENTTITLEC_I, EXPIRATIONA1_I, EXPIRATIONA2_I, EXPIRATIONB_I, EXPIRATIONC_I, ISSUEAUTHORITYA_I, ISSUEAUTHORITYB_I, ISSUEAUTHORITYC_I, ALIENADMINNUMBER_I, ALIENNUMBER_I, ALIENUNTILDATE_I, DATEFILED_I, PREPARERSNAME_I, PREPARERADDRESS_I, DATEIN_I, EMPLOYERNAME_I, TITLE1_I, TITLE2_I, BUSNAMEADDR_I, NEWNAME_I, REHIREDATE_I, O3CDATEEXPIRE_I, O3CDOCU#_I, O3CDOCUTITLE_I, DATESIGNED_I, DATEOFLASTCHANGE_I, EXITDATE, REENTRYDATE, i9_Non_Citizen_CB, CCodeDesc, FOREIGNPASSNUMBER, DEX_ROW_ID FROM .AHROR012 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHROR012F_1] TO [DYNGRP]
GO
