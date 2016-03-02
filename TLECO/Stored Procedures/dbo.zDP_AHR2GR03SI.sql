SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2GR03SI] (@EMPID_I char(15), @ENTRYNUMBER_I smallint, @DSCRIPTN char(31), @STRTDATE datetime, @ENDDATE datetime, @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2GR03 (EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I) VALUES ( @EMPID_I, @ENTRYNUMBER_I, @DSCRIPTN, @STRTDATE, @ENDDATE, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2GR03SI] TO [DYNGRP]
GO