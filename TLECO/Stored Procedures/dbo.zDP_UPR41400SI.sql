SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41400SI] (@LOCALTAX char(7), @DSCRIPTN char(31), @LCLTXCAL_1 smallint, @LCLTXCAL_2 smallint, @LCLTXCAL_3 smallint, @LCLTXCAL_4 smallint, @LCLTXCAL_5 smallint, @EXMTAMNT numeric(19,5), @MNTXBLWG numeric(19,5), @MYTDTXWG numeric(19,5), @LCLTAXRT int, @LCLTXAMT numeric(19,5), @MAXPERYR numeric(19,5), @INACTIVE tinyint, @NOTEINDX numeric(19,5), @STDDMTHD smallint, @STDDPCNT int, @STDDEDAM numeric(19,5), @STDEDMAX numeric(19,5), @STDEDMIN numeric(19,5), @TAXTYPE smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR41400 (LOCALTAX, DSCRIPTN, LCLTXCAL_1, LCLTXCAL_2, LCLTXCAL_3, LCLTXCAL_4, LCLTXCAL_5, EXMTAMNT, MNTXBLWG, MYTDTXWG, LCLTAXRT, LCLTXAMT, MAXPERYR, INACTIVE, NOTEINDX, STDDMTHD, STDDPCNT, STDDEDAM, STDEDMAX, STDEDMIN, TAXTYPE) VALUES ( @LOCALTAX, @DSCRIPTN, @LCLTXCAL_1, @LCLTXCAL_2, @LCLTXCAL_3, @LCLTXCAL_4, @LCLTXCAL_5, @EXMTAMNT, @MNTXBLWG, @MYTDTXWG, @LCLTAXRT, @LCLTXAMT, @MAXPERYR, @INACTIVE, @NOTEINDX, @STDDMTHD, @STDDPCNT, @STDDEDAM, @STDEDMAX, @STDEDMIN, @TAXTYPE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41400SI] TO [DYNGRP]
GO
