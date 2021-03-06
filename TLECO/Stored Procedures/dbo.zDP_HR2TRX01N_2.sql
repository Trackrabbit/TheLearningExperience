SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2TRX01N_2] (@BS int, @EXPORTTYPE_I smallint, @EMPID_I char(15), @EXPORTTYPE_I_RS smallint, @EMPID_I_RS char(15), @EXPORTTYPE_I_RE smallint, @EMPID_I_RE char(15)) AS  set nocount on IF @EXPORTTYPE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, EXPORTTYPE_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2TRX01 WHERE ( EXPORTTYPE_I = @EXPORTTYPE_I AND EMPID_I > @EMPID_I OR EXPORTTYPE_I > @EXPORTTYPE_I ) ORDER BY EXPORTTYPE_I ASC, EMPID_I ASC END ELSE IF @EXPORTTYPE_I_RS = @EXPORTTYPE_I_RE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, EXPORTTYPE_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2TRX01 WHERE EXPORTTYPE_I = @EXPORTTYPE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( EXPORTTYPE_I = @EXPORTTYPE_I AND EMPID_I > @EMPID_I OR EXPORTTYPE_I > @EXPORTTYPE_I ) ORDER BY EXPORTTYPE_I ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, COMPANYCODE_I, EXPORTTYPE_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2TRX01 WHERE EXPORTTYPE_I BETWEEN @EXPORTTYPE_I_RS AND @EXPORTTYPE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( EXPORTTYPE_I = @EXPORTTYPE_I AND EMPID_I > @EMPID_I OR EXPORTTYPE_I > @EXPORTTYPE_I ) ORDER BY EXPORTTYPE_I ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2TRX01N_2] TO [DYNGRP]
GO
