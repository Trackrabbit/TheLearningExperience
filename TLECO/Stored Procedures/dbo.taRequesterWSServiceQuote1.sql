SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterWSServiceQuote1] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
cast(eConnect.INDEX1 as [int]) as [eConnect!1!TrxState],
rtrim(cast(eConnect.INDEX2 as [char])) as [eConnect!1!CALLNBR],
NULL as [ServiceQuote!2!TrxState!element],
NULL as [ServiceQuote!2!CALLNBR!element],
NULL as [ServiceQuote!2!SRVSTAT!element],
NULL as [ServiceQuote!2!SRVTYPE!element],
NULL as [ServiceQuote!2!SVCDESCR!element],
NULL as [ServiceQuote!2!priorityLevel!element],
NULL as [ServiceQuote!2!CUSTNMBR!element],
NULL as [ServiceQuote!2!Customer_Reference!element],
NULL as [ServiceQuote!2!ADRSCODE!element],
NULL as [ServiceQuote!2!CUSTNAME!element],
NULL as [ServiceQuote!2!ADDRESS1!element],
NULL as [ServiceQuote!2!ADDRESS2!element],
NULL as [ServiceQuote!2!CITY!element],
NULL as [ServiceQuote!2!STATE!element],
NULL as [ServiceQuote!2!ZIPCODE!element],
NULL as [ServiceQuote!2!CNTCPRSN!element],
NULL as [ServiceQuote!2!PHONE1!element],
NULL as [ServiceQuote!2!OFFID!element],
NULL as [ServiceQuote!2!SVCAREA!element],
NULL as [ServiceQuote!2!TECHID!element],
NULL as [ServiceQuote!2!TIMEZONE!element],
NULL as [ServiceQuote!2!ENTDTE!element],
NULL as [ServiceQuote!2!ENTTME!element],
NULL as [ServiceQuote!2!ETADTE!element],
NULL as [ServiceQuote!2!ETATME!element],
NULL as [ServiceQuote!2!Response_Date!element],
NULL as [ServiceQuote!2!Response_Time!element],
NULL as [ServiceQuote!2!PRICELVL!element],
NULL as [ServiceQuote!2!PYMTRMID!element],
NULL as [ServiceQuote!2!SLPRSNID!element],
NULL as [ServiceQuote!2!LABSTOTPRC!element],
NULL as [ServiceQuote!2!LABPCT!element],
NULL as [ServiceQuote!2!LABSTOTCST!element],
NULL as [ServiceQuote!2!PARSTOTPRC!element],
NULL as [ServiceQuote!2!PARTPCT!element],
NULL as [ServiceQuote!2!PARSTOTCST!element],
NULL as [ServiceQuote!2!MSCSTOTPRC!element],
NULL as [ServiceQuote!2!MISCPCT!element],
NULL as [ServiceQuote!2!MISSTOTCST!element],
NULL as [ServiceQuote!2!TAXSCHID!element],
NULL as [ServiceQuote!2!TAXEXMT1!element],
NULL as [ServiceQuote!2!TAXEXMT2!element],
NULL as [ServiceQuote!2!PRETAXTOT!element],
NULL as [ServiceQuote!2!TAXAMNT!element],
NULL as [ServiceQuote!2!TOTAL!element],
NULL as [ServiceQuote!2!PORDNMBR!element],
NULL as [ServiceQuote!2!TXTFIELD!element],
NULL as [ServiceQuote!2!USERDEF1!element],
NULL as [ServiceQuote!2!USERDEF2!element],
NULL as [ServiceQuote!2!USRDEF03!element],
NULL as [ServiceQuote!2!USRDEF04!element],
NULL as [ServiceQuote!2!USRDEF05!element],
NULL as [ServiceQuote!2!CONTNBR!element],
NULL as [ServiceQuote!2!SVC_Contract_Line_SEQ!element],
NULL as [ServiceQuote!2!ETTR!element],
NULL as [ServiceQuote!2!SVC_On_Hold!element],
NULL as [ServiceQuote!2!Bill_To_Customer!element],
NULL as [ServiceQuote!2!CURNCYID!element],
NULL as [ServiceQuote!2!SVC_Bill_To_Address_Code!element],
NULL as [ServiceQuote!2!RATETPID!element],
NULL as [ServiceQuote!2!XCHGRATE!element],
NULL as [ServiceQuote!2!EXCHDATE!element],
NULL as [ServiceQuote!2!ORIGMISSTOTCST!element],
NULL as [ServiceQuote!2!ORIGMSCSTOTPRC!element],
NULL as [ServiceQuote!2!ORIGLABSUBTOTCOST!element],
NULL as [ServiceQuote!2!ORIGLABSTOTPRC!element],
NULL as [ServiceQuote!2!ORIGPARSTOTCST!element],
NULL as [ServiceQuote!2!ORIGPARSTOTPRC!element],
NULL as [ServiceQuote!2!ORIGPRETAXTOT!element],
NULL as [ServiceQuote!2!ORTAXAMT!element],
NULL as [ServiceQuote!2!ORIGTOTAL!element],
NULL as [ServiceQuote!2!ADDRESS3!element],
NULL as [ServiceQuote!2!COUNTRY!element],
NULL as [ServiceQuote!2!SVC_FO_ID!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
eConnect.INDEX2,
LTRIM(RTRIM([ServiceQuote].TrxState)),
LTRIM(RTRIM([ServiceQuote].CALLNBR)),
RTRIM([ServiceQuote].SRVSTAT),RTRIM([ServiceQuote].SRVTYPE),RTRIM([ServiceQuote].SVCDESCR),RTRIM([ServiceQuote].priorityLevel),RTRIM([ServiceQuote].CUSTNMBR),RTRIM([ServiceQuote].Customer_Reference),RTRIM([ServiceQuote].ADRSCODE),RTRIM([ServiceQuote].CUSTNAME),RTRIM([ServiceQuote].ADDRESS1),RTRIM([ServiceQuote].ADDRESS2),RTRIM([ServiceQuote].CITY),RTRIM([ServiceQuote].STATE),RTRIM([ServiceQuote].ZIPCODE),RTRIM([ServiceQuote].CNTCPRSN),RTRIM([ServiceQuote].PHONE1),RTRIM([ServiceQuote].OFFID),RTRIM([ServiceQuote].SVCAREA),RTRIM([ServiceQuote].TECHID),RTRIM([ServiceQuote].TIMEZONE),[ServiceQuote].ENTDTE,[ServiceQuote].ENTTME,[ServiceQuote].ETADTE,[ServiceQuote].ETATME,[ServiceQuote].Response_Date,[ServiceQuote].Response_Time,RTRIM([ServiceQuote].PRICELVL),RTRIM([ServiceQuote].PYMTRMID),RTRIM([ServiceQuote].SLPRSNID),RTRIM([ServiceQuote].LABSTOTPRC),RTRIM([ServiceQuote].LABPCT),RTRIM([ServiceQuote].LABSTOTCST),RTRIM([ServiceQuote].PARSTOTPRC),RTRIM([ServiceQuote].PARTPCT),RTRIM([ServiceQuote].PARSTOTCST),RTRIM([ServiceQuote].MSCSTOTPRC),RTRIM([ServiceQuote].MISCPCT),RTRIM([ServiceQuote].MISSTOTCST),RTRIM([ServiceQuote].TAXSCHID),RTRIM([ServiceQuote].TAXEXMT1),RTRIM([ServiceQuote].TAXEXMT2),RTRIM([ServiceQuote].PRETAXTOT),RTRIM([ServiceQuote].TAXAMNT),RTRIM([ServiceQuote].TOTAL),RTRIM([ServiceQuote].PORDNMBR),[ServiceQuote].TXTFIELD,RTRIM([ServiceQuote].USERDEF1),RTRIM([ServiceQuote].USERDEF2),RTRIM([ServiceQuote].USRDEF03),RTRIM([ServiceQuote].USRDEF04),RTRIM([ServiceQuote].USRDEF05),RTRIM([ServiceQuote].CONTNBR),RTRIM([ServiceQuote].SVC_Contract_Line_SEQ),RTRIM([ServiceQuote].ETTR),RTRIM([ServiceQuote].SVC_On_Hold),RTRIM([ServiceQuote].Bill_To_Customer),RTRIM([ServiceQuote].CURNCYID),RTRIM([ServiceQuote].SVC_Bill_To_Address_Code),RTRIM([ServiceQuote].RATETPID),RTRIM([ServiceQuote].XCHGRATE),[ServiceQuote].EXCHDATE,RTRIM([ServiceQuote].ORIGMISSTOTCST),RTRIM([ServiceQuote].ORIGMSCSTOTPRC),RTRIM([ServiceQuote].ORIGLABSUBTOTCOST),RTRIM([ServiceQuote].ORIGLABSTOTPRC),RTRIM([ServiceQuote].ORIGPARSTOTCST),RTRIM([ServiceQuote].ORIGPARSTOTPRC),RTRIM([ServiceQuote].ORIGPRETAXTOT),RTRIM([ServiceQuote].ORTAXAMT),RTRIM([ServiceQuote].ORIGTOTAL),RTRIM([ServiceQuote].ADDRESS3),RTRIM([ServiceQuote].COUNTRY),RTRIM([ServiceQuote].SVC_FO_ID) FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqServiceQuoteHeader] [ServiceQuote] (nolock) on [ServiceQuote].CALLNBR = eConnect.INDEX2 Order by  [eConnect!1!TrxState],  [eConnect!1!CALLNBR],  [ServiceQuote!2!TrxState!element], [ServiceQuote!2!CALLNBR!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterWSServiceQuote1] TO [DYNGRP]
GO
