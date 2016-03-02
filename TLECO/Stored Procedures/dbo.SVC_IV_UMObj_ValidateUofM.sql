SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_IV_UMObj_ValidateUofM] (@UOMSchedule char(11),@UOFM char(9),@OUT_Status integer output) AS declare @MISSINGUOM integer,@EMPTY integer select @MISSINGUOM = 5032, @EMPTY = 50 if @UOMSchedule is null or @UOMSchedule = ''  select @OUT_Status = @EMPTY if exists (select * from IV40202 where UOMSCHDL = @UOMSchedule and UOFM = @UOFM)  select @OUT_Status = 0 else  select @OUT_Status = @MISSINGUOM    
GO
GRANT EXECUTE ON  [dbo].[SVC_IV_UMObj_ValidateUofM] TO [DYNGRP]
GO
