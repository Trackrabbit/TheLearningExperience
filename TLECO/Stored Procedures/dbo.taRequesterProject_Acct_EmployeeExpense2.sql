SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterProject_Acct_EmployeeExpense2] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
rtrim(eConnect.INDEX1) as [eConnect!1!PAerdocnumber],
NULL as [PA_EmpExp!2!PAerdocnumber!element],
NULL as [PA_EmpExp!2!PAertrxtype!element],
NULL as [PA_EmpExp!2!PDK_EE_No!element],
NULL as [PA_EmpExp!2!PADOCDT!element],
NULL as [PA_EmpExp!2!USERID!element],
NULL as [PA_EmpExp!2!BACHNUMB!element],
NULL as [PA_EmpExp!2!BCHSOURC!element],
NULL as [PA_EmpExp!2!TRXSORCE!element],
NULL as [PA_EmpExp!2!PAREFNO!element],
NULL as [PA_EmpExp!2!SHIPMTHD!element],
NULL as [PA_EmpExp!2!PAUD1!element],
NULL as [PA_EmpExp!2!PAUD2!element],
NULL as [PA_EmpExp!2!EMPLOYID!element],
NULL as [PA_EmpExp!2!PAVENADDRESSID!element],
NULL as [PA_EmpExp!2!PAStartDate!element],
NULL as [PA_EmpExp!2!PAEnDate!element],
NULL as [PA_EmpExp!2!PAreptsuff!element],
NULL as [PA_EmpExp!2!PAYR!element],
NULL as [PA_EmpExp!2!PYMTRMID!element],
NULL as [PA_EmpExp!2!DUEDATE!element],
NULL as [PA_EmpExp!2!DSCDLRAM!element],
NULL as [PA_EmpExp!2!ORDDLRAT!element],
NULL as [PA_EmpExp!2!DISCDATE!element],
NULL as [PA_EmpExp!2!DISAMTAV!element],
NULL as [PA_EmpExp!2!ODISAMTAV!element],
NULL as [PA_EmpExp!2!PRCTDISC!element],
NULL as [PA_EmpExp!2!PACOMM!element],
NULL as [PA_EmpExp!2!CURNCYID!element],
NULL as [PA_EmpExp!2!CURRNIDX!element],
NULL as [PA_EmpExp!2!PATQTY!element],
NULL as [PA_EmpExp!2!PAEXTCOST!element],
NULL as [PA_EmpExp!2!OREXTCST!element],
NULL as [PA_EmpExp!2!PAtotcosts!element],
NULL as [PA_EmpExp!2!PAORIGTOTCOSTS!element],
NULL as [PA_EmpExp!2!PAREIMBURSTAXAMT!element],
NULL as [PA_EmpExp!2!PAORIGREIMTAXAMT!element],
NULL as [PA_EmpExp!2!BKTPURAM!element],
NULL as [PA_EmpExp!2!PATACRV!element],
NULL as [PA_EmpExp!2!PAORIACCRREV!element],
NULL as [PA_EmpExp!2!TRDISAMT!element],
NULL as [PA_EmpExp!2!ORTDISAM!element],
NULL as [PA_EmpExp!2!PAFreight_Taxable_P!element],
NULL as [PA_EmpExp!2!FRTSCHID!element],
NULL as [PA_EmpExp!2!FRTAMNT!element],
NULL as [PA_EmpExp!2!ORFRTAMT!element],
NULL as [PA_EmpExp!2!FRTTXAMT!element],
NULL as [PA_EmpExp!2!ORFRTTAX!element],
NULL as [PA_EmpExp!2!PAMisc_Taxable_P!element],
NULL as [PA_EmpExp!2!MSCSCHID!element],
NULL as [PA_EmpExp!2!MSCCHAMT!element],
NULL as [PA_EmpExp!2!OMISCAMT!element],
NULL as [PA_EmpExp!2!MSCTXAMT!element],
NULL as [PA_EmpExp!2!ORMSCTAX!element],
NULL as [PA_EmpExp!2!DOCAMNT!element],
NULL as [PA_EmpExp!2!ORDOCAMT!element],
NULL as [PA_EmpExp!2!TEN99AMNT!element],
NULL as [PA_EmpExp!2!OR1099AM!element],
NULL as [PA_EmpExp!2!UN1099AM!element],
NULL as [PA_EmpExp!2!CASHAMNT!element],
NULL as [PA_EmpExp!2!ORCASAMT!element],
NULL as [PA_EmpExp!2!CAMCBKID!element],
NULL as [PA_EmpExp!2!CDOCNMBR!element],
NULL as [PA_EmpExp!2!CAMTDATE!element],
NULL as [PA_EmpExp!2!CAMPMTNM!element],
NULL as [PA_EmpExp!2!CHRGAMNT!element],
NULL as [PA_EmpExp!2!OCHGAMT!element],
NULL as [PA_EmpExp!2!CHEKAMNT!element],
NULL as [PA_EmpExp!2!ORCHKAMT!element],
NULL as [PA_EmpExp!2!CHEKNMBR!element],
NULL as [PA_EmpExp!2!CHEKDATE!element],
NULL as [PA_EmpExp!2!CAMPYNBR!element],
NULL as [PA_EmpExp!2!CHAMCBID!element],
NULL as [PA_EmpExp!2!CARDNAME!element],
NULL as [PA_EmpExp!2!CRCRDAMT!element],
NULL as [PA_EmpExp!2!ORCCDAMT!element],
NULL as [PA_EmpExp!2!CRCARDDT!element],
NULL as [PA_EmpExp!2!CCAMPYNM!element],
NULL as [PA_EmpExp!2!CCRCTNUM!element],
NULL as [PA_EmpExp!2!DISTKNAM!element],
NULL as [PA_EmpExp!2!ORDISTKN!element],
NULL as [PA_EmpExp!2!ORDAVFRT!element],
NULL as [PA_EmpExp!2!ODAVPUR!element],
NULL as [PA_EmpExp!2!ORDAVMSC!element],
NULL as [PA_EmpExp!2!TAXSCHID!element],
NULL as [PA_EmpExp!2!TAXAMNT!element],
NULL as [PA_EmpExp!2!ORTAXAMT!element],
NULL as [PA_EmpExp!2!BCKTXAMT!element],
NULL as [PA_EmpExp!2!OBTAXAMT!element],
NULL as [PA_EmpExp!2!PAReimbursableAmount!element],
NULL as [PA_EmpExp!2!PAOrigReimbursableAmt!element],
NULL as [PA_EmpExp!2!PAPD!element],
NULL as [PA_EmpExp!2!RATETPID!element],
NULL as [PA_EmpExp!2!EXGTBLID!element],
NULL as [PA_EmpExp!2!XCHGRATE!element],
NULL as [PA_EmpExp!2!EXCHDATE!element],
NULL as [PA_EmpExp!2!TIME1!element],
NULL as [PA_EmpExp!2!RTCLCMTD!element],
NULL as [PA_EmpExp!2!DENXRATE!element],
NULL as [PA_EmpExp!2!MCTRXSTT!element],
NULL as [PA_EmpExp!2!PApostoDynPM!element],
NULL as [PA_EmpExp!2!NOTEINDX!element],
NULL as [Line!3!PAerdocnumber!element],
NULL as [Line!3!LNITMSEQ!element],
NULL as [Line!3!PAertrxtype!element],
NULL as [Line!3!PAREFNO!element],
NULL as [Line!3!EMPLOYID!element],
NULL as [Line!3!PADT!element],
NULL as [Line!3!PACONTNUMBER!element],
NULL as [Line!3!PAPROJNUMBER!element],
NULL as [Line!3!PACOSTCATID!element],
NULL as [Line!3!PAitemnumber!element],
NULL as [Line!3!PAbillnoteidx!element],
NULL as [Line!3!PAQtyQ!element],
NULL as [Line!3!PABase_Qty!element],
NULL as [Line!3!PAUnit_of_Measure!element],
NULL as [Line!3!UOMSCHDL!element],
NULL as [Line!3!PAUNITCOST!element],
NULL as [Line!3!ORUNTCST!element],
NULL as [Line!3!PABase_Unit_Cost!element],
NULL as [Line!3!PAORGBSUNITCST!element],
NULL as [Line!3!PAEXTCOST!element],
NULL as [Line!3!OREXTCST!element],
NULL as [Line!3!PAtotcosts!element],
NULL as [Line!3!PAORIGTOTCOSTS!element],
NULL as [Line!3!PABILRATE!element],
NULL as [Line!3!PAORIGBILLRATE!element],
NULL as [Line!3!PA_Base_Billing_Rate!element],
NULL as [Line!3!PAORIGBSBILLRTE!element],
NULL as [Line!3!PAMARKPERCENT!element],
NULL as [Line!3!PAOverhead_Amount!element],
NULL as [Line!3!PAORIGOVHDAMT!element],
NULL as [Line!3!PABaseOvhdCost!element],
NULL as [Line!3!PAORIGBASEOVRHCST!element],
NULL as [Line!3!PAOverheaPercentage!element],
NULL as [Line!3!PATOTALOVERH!element],
NULL as [Line!3!PAORIGTOTOVRHD!element],
NULL as [Line!3!PAProfitType!element],
NULL as [Line!3!PAProfitAmount!element],
NULL as [Line!3!PAORIGPROFAMT!element],
NULL as [Line!3!PAProfitPercent!element],
NULL as [Line!3!PATotalProfit!element],
NULL as [Line!3!PAORIGTOTPROF!element],
NULL as [Line!3!PAACREV!element],
NULL as [Line!3!PAORIACCRREV!element],
NULL as [Line!3!PASTD_Qty!element],
NULL as [Line!3!PANC_Qty!element],
NULL as [Line!3!PANB_Qty!element],
NULL as [Line!3!PAPurchase_Tax_Options!element],
NULL as [Line!3!ITMTSHID!element],
NULL as [Line!3!TAXAMNT!element],
NULL as [Line!3!ORTAXAMT!element],
NULL as [Line!3!BCKTXAMT!element],
NULL as [Line!3!OBTAXAMT!element],
NULL as [Line!3!PAPaymentMethod!element],
NULL as [Line!3!PAExpenseType!element],
NULL as [Line!3!PAReimbursableAmount!element],
NULL as [Line!3!PAOrigReimbursableAmt!element],
NULL as [Line!3!PACGBWIPIDX!element],
NULL as [Line!3!PAUnbilled_AR_Idx!element],
NULL as [Line!3!PACogs_Idx!element],
NULL as [Line!3!PAContra_Account_IDX!element],
NULL as [Line!3!PAOverhead_IDX!element],
NULL as [Line!3!PAUnbilled_Proj_Rev_Idx!element],
NULL as [Line!3!LNITMSEQ!element],
NULL as [Line!3!PAReference_Line_Seq_N!element],
NULL as [Line!3!PAbllngtype!element],
NULL as [Line!3!PABilling_StatusN!element],
NULL as [Line!3!PAexptdate!element],
NULL as [Line!3!PAApproved_Quantity!element],
NULL as [Line!3!PAAPPROVBILLRATE!element],
NULL as [Line!3!PAAPPROVMKUPPCT!element],
NULL as [Line!3!PAApproved_Billing_Amou!element],
NULL as [Line!3!PARemaining_Quantity!element],
NULL as [Line!3!PARemaining_Total_Cost!element],
NULL as [Line!3!PARemaining_Accrued_Rev!element],
NULL as [Line!3!PABILLQTY!element],
NULL as [Line!3!PA_Billed_Profit_Amount_!element],
NULL as [Line!3!PABilledProfitPercentage!element],
NULL as [Line!3!PABilled_Amount!element],
NULL as [Line!3!PABilledTax!element],
NULL as [Line!3!PAWrite_UpDown_Amount!element],
NULL as [Line!3!PAWrite_UpDown_Percenta!element],
NULL as [Line!3!PAApprover_ID!element],
NULL as [Line!3!PAApprover_Type!element],
NULL as [Line!3!PAPartial_Bill!element],
NULL as [Line!3!PAROUNDAMT!element],
NULL as [Line!3!RNDDIFF!element],
NULL as [Line!3!PACHGORDNO!element],
NULL as [Tax!4!PAertrxtype!element],
NULL as [Tax!4!PAerdocnumber!element],
NULL as [Tax!4!LNITMSEQ!element],
NULL as [Tax!4!TAXDTLID!element],
NULL as [Tax!4!EMPLOYID!element],
NULL as [Tax!4!TAXAMNT!element],
NULL as [Tax!4!PAREIMBURSTAXAMT!element],
NULL as [Tax!4!BKOUTTAX!element],
NULL as [Tax!4!ORTAXAMT!element],
NULL as [Tax!4!PAORIGREIMTAXAMT!element],
NULL as [Tax!4!PCTAXAMT!element],
NULL as [Tax!4!ORPURTAX!element],
NULL as [Tax!4!FRTTXAMT!element],
NULL as [Tax!4!ORFRTTAX!element],
NULL as [Tax!4!MSCTXAMT!element],
NULL as [Tax!4!ORMSCTAX!element],
NULL as [Tax!4!TXDTTPUR!element],
NULL as [Tax!4!ORTOTPUR!element],
NULL as [Tax!4!TDTTXPUR!element],
NULL as [Tax!4!ORTXBPUR!element],
NULL as [Tax!4!ACTINDX!element],
NULL as [Tax!4!CURRNIDX!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM([PA_EmpExp].PAerdocnumber)),
RTRIM([PA_EmpExp].PAertrxtype),RTRIM([PA_EmpExp].PDK_EE_No),RTRIM([PA_EmpExp].PADOCDT),RTRIM([PA_EmpExp].USERID),RTRIM([PA_EmpExp].BACHNUMB),RTRIM([PA_EmpExp].BCHSOURC),RTRIM([PA_EmpExp].TRXSORCE),RTRIM([PA_EmpExp].PAREFNO),RTRIM([PA_EmpExp].SHIPMTHD),RTRIM([PA_EmpExp].PAUD1),RTRIM([PA_EmpExp].PAUD2),RTRIM([PA_EmpExp].EMPLOYID),RTRIM([PA_EmpExp].PAVENADDRESSID),RTRIM([PA_EmpExp].PAStartDate),RTRIM([PA_EmpExp].PAEnDate),RTRIM([PA_EmpExp].PAreptsuff),RTRIM([PA_EmpExp].PAYR),RTRIM([PA_EmpExp].PYMTRMID),RTRIM([PA_EmpExp].DUEDATE),RTRIM([PA_EmpExp].DSCDLRAM),RTRIM([PA_EmpExp].ORDDLRAT),RTRIM([PA_EmpExp].DISCDATE),RTRIM([PA_EmpExp].DISAMTAV),RTRIM([PA_EmpExp].ODISAMTAV),RTRIM([PA_EmpExp].PRCTDISC),RTRIM([PA_EmpExp].PACOMM),RTRIM([PA_EmpExp].CURNCYID),RTRIM([PA_EmpExp].CURRNIDX),RTRIM([PA_EmpExp].PATQTY),RTRIM([PA_EmpExp].PAEXTCOST),RTRIM([PA_EmpExp].OREXTCST),RTRIM([PA_EmpExp].PAtotcosts),RTRIM([PA_EmpExp].PAORIGTOTCOSTS),RTRIM([PA_EmpExp].PAREIMBURSTAXAMT),RTRIM([PA_EmpExp].PAORIGREIMTAXAMT),RTRIM([PA_EmpExp].BKTPURAM),RTRIM([PA_EmpExp].PATACRV),RTRIM([PA_EmpExp].PAORIACCRREV),RTRIM([PA_EmpExp].TRDISAMT),RTRIM([PA_EmpExp].ORTDISAM),RTRIM([PA_EmpExp].PAFreight_Taxable_P),RTRIM([PA_EmpExp].FRTSCHID),RTRIM([PA_EmpExp].FRTAMNT),RTRIM([PA_EmpExp].ORFRTAMT),RTRIM([PA_EmpExp].FRTTXAMT),RTRIM([PA_EmpExp].ORFRTTAX),RTRIM([PA_EmpExp].PAMisc_Taxable_P),RTRIM([PA_EmpExp].MSCSCHID),RTRIM([PA_EmpExp].MSCCHAMT),RTRIM([PA_EmpExp].OMISCAMT),RTRIM([PA_EmpExp].MSCTXAMT),RTRIM([PA_EmpExp].ORMSCTAX),RTRIM([PA_EmpExp].DOCAMNT),RTRIM([PA_EmpExp].ORDOCAMT),RTRIM([PA_EmpExp].TEN99AMNT),RTRIM([PA_EmpExp].OR1099AM),RTRIM([PA_EmpExp].UN1099AM),RTRIM([PA_EmpExp].CASHAMNT),RTRIM([PA_EmpExp].ORCASAMT),RTRIM([PA_EmpExp].CAMCBKID),RTRIM([PA_EmpExp].CDOCNMBR),RTRIM([PA_EmpExp].CAMTDATE),RTRIM([PA_EmpExp].CAMPMTNM),RTRIM([PA_EmpExp].CHRGAMNT),RTRIM([PA_EmpExp].OCHGAMT),RTRIM([PA_EmpExp].CHEKAMNT),RTRIM([PA_EmpExp].ORCHKAMT),RTRIM([PA_EmpExp].CHEKNMBR),RTRIM([PA_EmpExp].CHEKDATE),RTRIM([PA_EmpExp].CAMPYNBR),RTRIM([PA_EmpExp].CHAMCBID),RTRIM([PA_EmpExp].CARDNAME),RTRIM([PA_EmpExp].CRCRDAMT),RTRIM([PA_EmpExp].ORCCDAMT),RTRIM([PA_EmpExp].CRCARDDT),RTRIM([PA_EmpExp].CCAMPYNM),RTRIM([PA_EmpExp].CCRCTNUM),RTRIM([PA_EmpExp].DISTKNAM),RTRIM([PA_EmpExp].ORDISTKN),RTRIM([PA_EmpExp].ORDAVFRT),RTRIM([PA_EmpExp].ODAVPUR),RTRIM([PA_EmpExp].ORDAVMSC),RTRIM([PA_EmpExp].TAXSCHID),RTRIM([PA_EmpExp].TAXAMNT),RTRIM([PA_EmpExp].ORTAXAMT),RTRIM([PA_EmpExp].BCKTXAMT),RTRIM([PA_EmpExp].OBTAXAMT),RTRIM([PA_EmpExp].PAReimbursableAmount),RTRIM([PA_EmpExp].PAOrigReimbursableAmt),RTRIM([PA_EmpExp].PAPD),RTRIM([PA_EmpExp].RATETPID),RTRIM([PA_EmpExp].EXGTBLID),RTRIM([PA_EmpExp].XCHGRATE),RTRIM([PA_EmpExp].EXCHDATE),RTRIM([PA_EmpExp].TIME1),RTRIM([PA_EmpExp].RTCLCMTD),RTRIM([PA_EmpExp].DENXRATE),RTRIM([PA_EmpExp].MCTRXSTT),RTRIM([PA_EmpExp].PApostoDynPM),RTRIM([PA_EmpExp].NOTEINDX),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA10500] [PA_EmpExp] (nolock) on [PA_EmpExp].PAerdocnumber = eConnect.INDEX1 UNION ALL Select 3,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(PA_EmpExp.PAerdocnumber)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([Line].PAerdocnumber)),
LTRIM(RTRIM([Line].LNITMSEQ)),
RTRIM([Line].PAertrxtype),RTRIM([Line].PAREFNO),RTRIM([Line].EMPLOYID),RTRIM([Line].PADT),RTRIM([Line].PACONTNUMBER),RTRIM([Line].PAPROJNUMBER),RTRIM([Line].PACOSTCATID),RTRIM([Line].PAitemnumber),RTRIM([Line].PAbillnoteidx),RTRIM([Line].PAQtyQ),RTRIM([Line].PABase_Qty),RTRIM([Line].PAUnit_of_Measure),RTRIM([Line].UOMSCHDL),RTRIM([Line].PAUNITCOST),RTRIM([Line].ORUNTCST),RTRIM([Line].PABase_Unit_Cost),RTRIM([Line].PAORGBSUNITCST),RTRIM([Line].PAEXTCOST),RTRIM([Line].OREXTCST),RTRIM([Line].PAtotcosts),RTRIM([Line].PAORIGTOTCOSTS),RTRIM([Line].PABILRATE),RTRIM([Line].PAORIGBILLRATE),RTRIM([Line].PA_Base_Billing_Rate),RTRIM([Line].PAORIGBSBILLRTE),RTRIM([Line].PAMARKPERCENT),RTRIM([Line].PAOverhead_Amount),RTRIM([Line].PAORIGOVHDAMT),RTRIM([Line].PABaseOvhdCost),RTRIM([Line].PAORIGBASEOVRHCST),RTRIM([Line].PAOverheaPercentage),RTRIM([Line].PATOTALOVERH),RTRIM([Line].PAORIGTOTOVRHD),RTRIM([Line].PAProfitType),RTRIM([Line].PAProfitAmount),RTRIM([Line].PAORIGPROFAMT),RTRIM([Line].PAProfitPercent),RTRIM([Line].PATotalProfit),RTRIM([Line].PAORIGTOTPROF),RTRIM([Line].PAACREV),RTRIM([Line].PAORIACCRREV),RTRIM([Line].PASTD_Qty),RTRIM([Line].PANC_Qty),RTRIM([Line].PANB_Qty),RTRIM([Line].PAPurchase_Tax_Options),RTRIM([Line].ITMTSHID),RTRIM([Line].TAXAMNT),RTRIM([Line].ORTAXAMT),RTRIM([Line].BCKTXAMT),RTRIM([Line].OBTAXAMT),RTRIM([Line].PAPaymentMethod),RTRIM([Line].PAExpenseType),RTRIM([Line].PAReimbursableAmount),RTRIM([Line].PAOrigReimbursableAmt),RTRIM([Line].PACGBWIPIDX),RTRIM([Line].PAUnbilled_AR_Idx),RTRIM([Line].PACogs_Idx),RTRIM([Line].PAContra_Account_IDX),RTRIM([Line].PAOverhead_IDX),RTRIM([Line].PAUnbilled_Proj_Rev_Idx),RTRIM([Line].LNITMSEQ),RTRIM([Line].PAReference_Line_Seq_N),RTRIM([Line].PAbllngtype),RTRIM([Line].PABilling_StatusN),RTRIM([Line].PAexptdate),RTRIM([Line].PAApproved_Quantity),RTRIM([Line].PAAPPROVBILLRATE),RTRIM([Line].PAAPPROVMKUPPCT),RTRIM([Line].PAApproved_Billing_Amou),RTRIM([Line].PARemaining_Quantity),RTRIM([Line].PARemaining_Total_Cost),RTRIM([Line].PARemaining_Accrued_Rev),RTRIM([Line].PABILLQTY),RTRIM([Line].PA_Billed_Profit_Amount_),RTRIM([Line].PABilledProfitPercentage),RTRIM([Line].PABilled_Amount),RTRIM([Line].PABilledTax),RTRIM([Line].PAWrite_UpDown_Amount),RTRIM([Line].PAWrite_UpDown_Percenta),RTRIM([Line].PAApprover_ID),RTRIM([Line].PAApprover_Type),RTRIM([Line].PAPartial_Bill),RTRIM([Line].PAROUNDAMT),RTRIM([Line].RNDDIFF),RTRIM([Line].PACHGORDNO),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA10500] [PA_EmpExp] (nolock) on [PA_EmpExp].PAerdocnumber = eConnect.INDEX1 left outer join [PA10501] [Line] (nolock) on Line.PAerdocnumber = PA_EmpExp.PAerdocnumber UNION ALL Select 4,3,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(PA_EmpExp.PAerdocnumber)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM(Line.PAerdocnumber)),
LTRIM(RTRIM(Line.LNITMSEQ)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([Tax].PAertrxtype)),
LTRIM(RTRIM([Tax].PAerdocnumber)),
LTRIM(RTRIM([Tax].LNITMSEQ)),
LTRIM(RTRIM([Tax].TAXDTLID)),
RTRIM([Tax].EMPLOYID),RTRIM([Tax].TAXAMNT),RTRIM([Tax].PAREIMBURSTAXAMT),RTRIM([Tax].BKOUTTAX),RTRIM([Tax].ORTAXAMT),RTRIM([Tax].PAORIGREIMTAXAMT),RTRIM([Tax].PCTAXAMT),RTRIM([Tax].ORPURTAX),RTRIM([Tax].FRTTXAMT),RTRIM([Tax].ORFRTTAX),RTRIM([Tax].MSCTXAMT),RTRIM([Tax].ORMSCTAX),RTRIM([Tax].TXDTTPUR),RTRIM([Tax].ORTOTPUR),RTRIM([Tax].TDTTXPUR),RTRIM([Tax].ORTXBPUR),RTRIM([Tax].ACTINDX),RTRIM([Tax].CURRNIDX) FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA10500] [PA_EmpExp] (nolock) on [PA_EmpExp].PAerdocnumber = eConnect.INDEX1 left outer join [PA10501] [Line] (nolock) on Line.PAerdocnumber = PA_EmpExp.PAerdocnumber left outer join [PA10502] [Tax] (nolock) on Tax.PAerdocnumber = Line.PAerdocnumber and Tax.LNITMSEQ = Line.LNITMSEQ Order by  [eConnect!1!PAerdocnumber],  [PA_EmpExp!2!PAerdocnumber!element], [Line!3!PAerdocnumber!element], [Line!3!LNITMSEQ!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterProject_Acct_EmployeeExpense2] TO [DYNGRP]
GO
