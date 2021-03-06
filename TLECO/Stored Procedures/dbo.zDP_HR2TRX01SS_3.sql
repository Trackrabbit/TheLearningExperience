SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2TRX01SS_3] (@COMPANYCODE_I char(7), @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, COMPANYCODE_I, EXPORTTYPE_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2TRX01 WHERE COMPANYCODE_I = @COMPANYCODE_I AND EMPID_I = @EMPID_I ORDER BY COMPANYCODE_I ASC, EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2TRX01SS_3] TO [DYNGRP]
GO
