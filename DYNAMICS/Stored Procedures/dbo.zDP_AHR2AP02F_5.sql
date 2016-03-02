SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP02F_5] (@REQUISITIONNUMBER_I_RS int, @REQUISITIONNUMBER_I_RE int) AS  set nocount on IF @REQUISITIONNUMBER_I_RS IS NULL BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP02 ORDER BY REQUISITIONNUMBER_I ASC, DEX_ROW_ID ASC END ELSE IF @REQUISITIONNUMBER_I_RS = @REQUISITIONNUMBER_I_RE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP02 WHERE REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I_RS ORDER BY REQUISITIONNUMBER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP02 WHERE REQUISITIONNUMBER_I BETWEEN @REQUISITIONNUMBER_I_RS AND @REQUISITIONNUMBER_I_RE ORDER BY REQUISITIONNUMBER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP02F_5] TO [DYNGRP]
GO