SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create PROCEDURE [dbo].[AA_UPDATE_YEAR1_AFTER_RECONCILE]  @I_sYear smallint = NULL,  @I_sOpenOrHistory smallint = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @O_tOpenToHistory tinyint  = NULL output,  @O_tHistoryToOpen tinyint  = NULL output,  @O_tBadTrxDate tinyint  = NULL output,  @O_SQL_Error_State int   = NULL output AS BEGIN DECLARE @OpenYear SMALLINT,   @TRXDATE DATETIME,   @Header_Year SMALLINT,   @Last_Day_Year DATETIME ,   @First_Day_Year DATETIME,  @aaYear1 SMALLINT,  @aaGLPostDt DATETIME ,  @cursor_Last_Day_Year DATETIME,  @cursor_Header_Year SMALLINT,  @cursor_First_Day_Year datetime  select @Last_Day_Year=LSTFSCDY,@First_Day_Year=FSTFSCDY from SY40101 WHERE YEAR1=@I_sYear DECLARE Period_Header1 INSENSITIVE CURSOR for   select  periodhdr.YEAR1,  periodhdr.LSTFSCDY,periodhdr.FSTFSCDY  from  SY40101  periodhdr WHERE YEAR1<>@I_sYear OPEN Period_Header1  FETCH NEXT FROM Period_Header1 INTO  @cursor_Header_Year,  @cursor_Last_Day_Year,  @cursor_First_Day_Year while @@FETCH_STATUS = 0  begin   BEGIN  update AAG30000  set YEAR1=@cursor_Header_Year where YEAR1=@I_sYear AND AAG30000.GLPOSTDT>@cursor_First_Day_Year AND   AAG30000.GLPOSTDT<@cursor_Last_Day_Year   END FETCH NEXT FROM Period_Header1 INTO  @cursor_Header_Year,  @cursor_Last_Day_Year,  @cursor_First_Day_Year END   DEALLOCATE Period_Header1 END    
GO
GRANT EXECUTE ON  [dbo].[AA_UPDATE_YEAR1_AFTER_RECONCILE] TO [DYNGRP]
GO
