SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4APP02N_4] (@BS int, @STATUS0_I smallint, @DEX_ROW_ID int, @STATUS0_I_RS smallint, @STATUS0_I_RE smallint) AS  set nocount on IF @STATUS0_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR4APP02 WHERE ( STATUS0_I = @STATUS0_I AND DEX_ROW_ID > @DEX_ROW_ID OR STATUS0_I > @STATUS0_I ) ORDER BY STATUS0_I ASC, DEX_ROW_ID ASC END ELSE IF @STATUS0_I_RS = @STATUS0_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR4APP02 WHERE STATUS0_I = @STATUS0_I_RS AND ( STATUS0_I = @STATUS0_I AND DEX_ROW_ID > @DEX_ROW_ID OR STATUS0_I > @STATUS0_I ) ORDER BY STATUS0_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR4APP02 WHERE STATUS0_I BETWEEN @STATUS0_I_RS AND @STATUS0_I_RE AND ( STATUS0_I = @STATUS0_I AND DEX_ROW_ID > @DEX_ROW_ID OR STATUS0_I > @STATUS0_I ) ORDER BY STATUS0_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4APP02N_4] TO [DYNGRP]
GO
