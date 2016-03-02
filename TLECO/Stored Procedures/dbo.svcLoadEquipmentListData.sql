SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[svcLoadEquipmentListData]  @I_sTableName char(10) = NULL,  @I_nModule smallint = NULL,  @I_nCurrencyIndex   smallint = NULL,  @I_dtStart datetime = NULL,  @I_dtEnd datetime = NULL,  @I_fIncludeHistory tinyint  = NULL,  @I_nLanguageID smallint = 0,  @I_sRestriction char(255) = NULL,  @O_SQL_Error_State int   = NULL   output  as declare @StartDate nvarchar(30), @EndDate nvarchar(30), @iStatus int, @iError int  select  @O_SQL_Error_State = 0,  @iStatus = 0,  @iError = 0  if (  @I_sTableName is NULL or  @I_dtStart is NULL or  @I_dtEnd is NULL or  @I_nModule is NULL or  @I_nCurrencyIndex is NULL or  @I_fIncludeHistory is NULL )  begin  select @O_SQL_Error_State = 26000  return end  select @StartDate = convert(nvarchar(30), @I_dtStart, 110) select @EndDate = convert(nvarchar(30), @I_dtEnd, 110) if @I_nModule = 0  begin exec ('insert into ' + @I_sTableName + ' (' +  'EQUIPID,SERLNMBR,ITEMNMBR,SRLSTAT,CUSTNMBR,ADRSCODE,INSTDTE,TECHID,OFFID,SVCAREA,REFRENCE,NOTEINDX,MKTOPROC,InfoValue) ' +  'select ' +   'EQUIPID,SERLNMBR,ITEMNMBR,SRLSTAT,CUSTNMBR,ADRSCODE,INSTDTE,TECHID,OFFID,SVCAREA,REFRENCE,NOTEINDX,MKTOPROC,InfoValue ' +  'from [dbo].[svcEquipmentList] ' +  'where INSTDTE <= ' + '''' + @StartDate + '''' +  ' and ' + @I_sRestriction  )  end  select @iError = @@error  if @iStatus = 0 and @iError <> 0  Begin  select @iStatus = @iError  End  if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[svcLoadEquipmentListData] TO [DYNGRP]
GO
