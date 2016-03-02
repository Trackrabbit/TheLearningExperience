SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[rmReceivablesSummaryInquiry]  @I_vStartRange varchar(65) = NULL,  @I_vEndRange varchar(65) = NULL,  @I_tSortBy tinyint  = NULL,  @I_cTableName char(25) = NULL,  @O_iErrorState          int             = NULL  output  as  declare @v_Select_Statement1 varchar(255),  @v_Select_Statement2 varchar(255),  @v_Select_Statement3 varchar(255),  @v_From_Clause1 varchar(255),  @v_From_Clause2 varchar(255),  @v_From_Clause3 varchar(255),  @v_Where_Clause1 varchar(255),  @v_Where_Clause2 varchar(255),  @v_Where_Clause3 varchar(255),  @v_Additional_Where varchar(255),  @v_Update_Where varchar(255),  @vStartRange varchar(132),  @vEndRange varchar(132),  @iStatus int,  @iError int  select @O_iErrorState = 0  if( @I_vStartRange is NULL or  @I_vEndRange is NULL or  @I_tSortBy is NULL or  @I_cTableName is NULL) begin  select          @O_iErrorState = 21022  return end  exec @iStatus = smFormatStringsForExecs  @I_vStartRange,  @vStartRange output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return(@iStatus)  exec @iStatus = smFormatStringsForExecs  @I_vEndRange,  @vEndRange output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  return(@iStatus)  select @v_Select_Statement1= 'select   RMDTYPAL,  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,  count(RM20101.CUSTNMBR) '  select @v_From_Clause1= ' from  RM00101 with (NOLOCK),  RM20101 with (NOLOCK)'  select @v_Where_Clause1 = ' where  RM00101.CUSTNMBR = RM20101.CUSTNMBR '  select @v_Update_Where = ' and RM20101.VOIDSTTS = 0 '  select @v_Select_Statement2 = 'select  -1,  isnull(sum(AGPERAMT_1),0.00),isnull(sum(AGPERAMT_2),0.00),isnull(sum(AGPERAMT_3),0.00),  isnull(sum(AGPERAMT_4),0.00),isnull(sum(AGPERAMT_5),0.00),isnull(sum(AGPERAMT_6),0.00),  isnull(sum(AGPERAMT_7),0.00),  0.00,  0.00,  0 '  select @v_From_Clause2= ' from   RM00101 with (NOLOCK),  RM00103 with (NOLOCK)'  select @v_Where_Clause2 = ' where  RM00101.CUSTNMBR = RM00103.CUSTNMBR  and RM00101.BALNCTYP = 0 '  select @v_Select_Statement3 =  'select  -2,  isnull(sum(AGPERAMT_1),0.00),  isnull(sum(AGPERAMT_2),0.00),  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,  0.00,   0 '  select @v_From_Clause3 =  ' from   RM00101 with (NOLOCK),  RM00103 with (NOLOCK)'  select @v_Where_Clause3 = ' where  RM00101.CUSTNMBR = RM00103.CUSTNMBR  and RM00101.BALNCTYP = 1 '  if @I_tSortBy = 1 begin  select @v_Additional_Where = ' and RM00101.CUSTNMBR >= ' + @vStartRange +   ' and RM00101.CUSTNMBR <= ' + @vEndRange end else if @I_tSortBy = 2 begin  select @v_Additional_Where = ' and RM00101.CUSTNAME >= ' + @vStartRange +   ' and RM00101.CUSTNAME <= ' + @vEndRange  end else if @I_tSortBy = 3 begin  select @v_Additional_Where = ' and RM00101.CUSTCLAS >= ' + @vStartRange +   ' and RM00101.CUSTCLAS <= ' + @vEndRange  end else if @I_tSortBy = 4 begin  select @v_Additional_Where = ' and RM00101.USERDEF1 >= ' + @vStartRange +   ' and RM00101.USERDEF1 <= ' + @vEndRange  end else if @I_tSortBy = 5 begin  select @v_Additional_Where = ' and RM00101.SLPRSNID >= ' + @vStartRange +   ' and RM00101.SLPRSNID <= ' + @vEndRange  end else if @I_tSortBy = 6 begin  select @v_Additional_Where = ' and RM00101.SALSTERR >= ' + @vStartRange +   ' and RM00101.SALSTERR <= ' + @vEndRange  end  exec('insert into ' + @I_cTableName + ' (DOCTYPE,AGPERAMT_1,AGPERAMT_2,AGPERAMT_3,  AGPERAMT_4,AGPERAMT_5,AGPERAMT_6,AGPERAMT_7,CURTRXAM,ORTRXAMT,CUSTCNT) '  + @v_Select_Statement1 + @v_From_Clause1 + @v_Where_Clause1   + @v_Additional_Where + 'group by RMDTYPAL')  exec('update ' +  @I_cTableName + ' set ORTRXAMT = t.ORTRXAMT, CURTRXAM = t.CURTRXAM from ' + @I_cTableName + ',(select isnull(sum(ORTRXAMT),0.0) as ORTRXAMT, isnull(sum(CURTRXAM),0.0) as CURTRXAM, RMDTYPAL ' + @v_From_Clause1 + @v_Where_Clause1 + @v_Update_Where + @v_Additional_Where + ' GROUP BY RMDTYPAL) t where ' + @I_cTableName  + '.DOCTYPE = t.RMDTYPAL')  exec('insert into ' + @I_cTableName + ' (DOCTYPE,AGPERAMT_1,AGPERAMT_2,AGPERAMT_3,  AGPERAMT_4,AGPERAMT_5,AGPERAMT_6,AGPERAMT_7,CURTRXAM,ORTRXAMT,CUSTCNT) '  + @v_Select_Statement2 + @v_From_Clause2 + @v_Where_Clause2   + @v_Additional_Where)  exec('insert into ' + @I_cTableName + ' (DOCTYPE,AGPERAMT_1,AGPERAMT_2,AGPERAMT_3,  AGPERAMT_4,AGPERAMT_5,AGPERAMT_6,AGPERAMT_7,CURTRXAM,ORTRXAMT,CUSTCNT) '  + @v_Select_Statement3 + @v_From_Clause3 + @v_Where_Clause3   + @v_Additional_Where)  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[rmReceivablesSummaryInquiry] TO [DYNGRP]
GO
