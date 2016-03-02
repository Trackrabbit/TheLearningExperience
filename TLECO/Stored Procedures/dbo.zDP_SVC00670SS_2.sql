SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00670SS_2] (@POSTED tinyint, @CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, SVC_Contract_Version, CNTTYPE, STRTDATE, ENDDATE, STTDOCDT, ENDDOCDT, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, HISTORY, RENCNTTYP, USERID, DEX_ROW_ID FROM .SVC00670 WHERE POSTED = @POSTED AND CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version ORDER BY POSTED ASC, CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00670SS_2] TO [DYNGRP]
GO
