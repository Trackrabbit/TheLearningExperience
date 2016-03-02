SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40304SI] (@PLANCODE char(15), @JOBTITLE char(7), @TEMPSEAT tinyint, @SEAT int, @DSCRIPTN char(31), @FTE numeric(19,5), @INACTIVE tinyint, @WKHRPRYR smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC40304 (PLANCODE, JOBTITLE, TEMPSEAT, SEAT, DSCRIPTN, FTE, INACTIVE, WKHRPRYR) VALUES ( @PLANCODE, @JOBTITLE, @TEMPSEAT, @SEAT, @DSCRIPTN, @FTE, @INACTIVE, @WKHRPRYR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40304SI] TO [DYNGRP]
GO
