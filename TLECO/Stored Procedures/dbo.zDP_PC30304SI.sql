SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC30304SI] (@PLANCODE char(15), @JOBTITLE char(7), @TEMPSEAT tinyint, @SEAT int, @CHANGEDATE_I datetime, @SEQ_I int, @CHANGETIME_I datetime, @DSCRIPTN char(31), @FTE numeric(19,5), @INACTIVE tinyint, @WKHRPRYR smallint, @CHANGEBY_I char(15), @CHANGEREASON_I char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC30304 (PLANCODE, JOBTITLE, TEMPSEAT, SEAT, CHANGEDATE_I, SEQ_I, CHANGETIME_I, DSCRIPTN, FTE, INACTIVE, WKHRPRYR, CHANGEBY_I, CHANGEREASON_I) VALUES ( @PLANCODE, @JOBTITLE, @TEMPSEAT, @SEAT, @CHANGEDATE_I, @SEQ_I, @CHANGETIME_I, @DSCRIPTN, @FTE, @INACTIVE, @WKHRPRYR, @CHANGEBY_I, @CHANGEREASON_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC30304SI] TO [DYNGRP]
GO