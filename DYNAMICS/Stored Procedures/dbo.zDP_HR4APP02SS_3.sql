SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4APP02SS_3] (@APPLYDATE_I datetime) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR4APP02 WHERE APPLYDATE_I = @APPLYDATE_I ORDER BY APPLYDATE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4APP02SS_3] TO [DYNGRP]
GO
