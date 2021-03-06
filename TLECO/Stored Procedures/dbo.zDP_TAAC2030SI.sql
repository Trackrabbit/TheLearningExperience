SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAAC2030SI] (@SENIORITY_I char(7), @MONTHS_I smallint, @ACCRUAL_I char(7), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TAAC2030 (SENIORITY_I, MONTHS_I, ACCRUAL_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I) VALUES ( @SENIORITY_I, @MONTHS_I, @ACCRUAL_I, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAAC2030SI] TO [DYNGRP]
GO
