SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterWSSalesInvoice1] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
cast(eConnect.INDEX1 as [int]) as [eConnect!1!TrxState],
rtrim(cast(eConnect.INDEX2 as [char])) as [eConnect!1!SOPNUMBE],
cast(eConnect.INDEX3 as [smallint]) as [eConnect!1!SOPTYPE],
NULL as [SOHeader!2!TrxState!element],
NULL as [SOHeader!2!SOPNUMBE!element],
NULL as [SOHeader!2!SOPTYPE!element],
NULL as [SOHeader!2!DOCID!element],
NULL as [SOHeader!2!ORIGTYPE!element],
NULL as [SOHeader!2!ORIGNUMB!element],
NULL as [SOHeader!2!TAXSCHID!element],
NULL as [SOHeader!2!FRTSCHID!element],
NULL as [SOHeader!2!MSCSCHID!element],
NULL as [SOHeader!2!SHIPMTHD!element],
NULL as [SOHeader!2!TAXAMNT!element],
NULL as [SOHeader!2!ORTAXAMT!element],
NULL as [SOHeader!2!LOCNCODE!element],
NULL as [SOHeader!2!DOCDATE!element],
NULL as [SOHeader!2!FRTAMNT!element],
NULL as [SOHeader!2!ORFRTAMT!element],
NULL as [SOHeader!2!MISCAMNT!element],
NULL as [SOHeader!2!ORMISCAMT!element],
NULL as [SOHeader!2!TRDISAMT!element],
NULL as [SOHeader!2!ORTDISAM!element],
NULL as [SOHeader!2!TRDISPCT!element],
NULL as [SOHeader!2!MRKDNAMT!element],
NULL as [SOHeader!2!ORMRKDAM!element],
NULL as [SOHeader!2!CUSTNMBR!element],
NULL as [SOHeader!2!CUSTNAME!element],
NULL as [SOHeader!2!CSTPONBR!element],
NULL as [SOHeader!2!ShipToName!element],
NULL as [SOHeader!2!ADDRESS1!element],
NULL as [SOHeader!2!ADDRESS2!element],
NULL as [SOHeader!2!ADDRESS3!element],
NULL as [SOHeader!2!CNTCPRSN!element],
NULL as [SOHeader!2!FAXNUMBR!element],
NULL as [SOHeader!2!CITY!element],
NULL as [SOHeader!2!STATE!element],
NULL as [SOHeader!2!ZIPCODE!element],
NULL as [SOHeader!2!COUNTRY!element],
NULL as [SOHeader!2!CCode!element],
NULL as [SOHeader!2!PHNUMBR1!element],
NULL as [SOHeader!2!PHNUMBR2!element],
NULL as [SOHeader!2!PHONE3!element],
NULL as [SOHeader!2!SUBTOTAL!element],
NULL as [SOHeader!2!ORSUBTOT!element],
NULL as [SOHeader!2!DOCAMNT!element],
NULL as [SOHeader!2!ORDOCAMT!element],
NULL as [SOHeader!2!PYMTRCVD!element],
NULL as [SOHeader!2!ORPMTRVD!element],
NULL as [SOHeader!2!DEPRECVD!element],
NULL as [SOHeader!2!ORDEPRVD!element],
NULL as [SOHeader!2!SALSTERR!element],
NULL as [SOHeader!2!SLPRSNID!element],
NULL as [SOHeader!2!UPSZONE!element],
NULL as [SOHeader!2!USER2ENT!element],
NULL as [SOHeader!2!CREATDDT!element],
NULL as [SOHeader!2!DEX_ROW_TS!element],
NULL as [SOHeader!2!BACHNUMB!element],
NULL as [SOHeader!2!BCHSOURC!element],
NULL as [SOHeader!2!BatchCreatedDate!element],
NULL as [SOHeader!2!BatchCreatedTime!element],
NULL as [SOHeader!2!PRBTADCD!element],
NULL as [SOHeader!2!PRSTADCD!element],
NULL as [SOHeader!2!FRTTXAMT!element],
NULL as [SOHeader!2!ORFRTTAX!element],
NULL as [SOHeader!2!MSCTXAMT!element],
NULL as [SOHeader!2!ORMSCTAX!element],
NULL as [SOHeader!2!MSTRNUMB!element],
NULL as [SOHeader!2!PYMTRMID!element],
NULL as [SOHeader!2!COMAPPTO!element],
NULL as [SOHeader!2!COMMAMNT!element],
NULL as [SOHeader!2!OCOMMAMT!element],
NULL as [SOHeader!2!CMMSLAMT!element],
NULL as [SOHeader!2!ORCOSAMT!element],
NULL as [SOHeader!2!CURNCYID!element],
NULL as [SOHeader!2!XCHGRATE!element],
NULL as [SOHeader!2!EXCHDATE!element],
NULL as [SOHeader!2!FRGTTXBL!element],
NULL as [SOHeader!2!MISCTXBL!element],
NULL as [SOHeader!2!COMMNTID!element],
NULL as [SOHeader!2!ReqShipDate!element],
NULL as [SOHeader!2!ACTLSHIP!element],
NULL as [SOHeader!2!FUFILDAT!element],
NULL as [SOHeader!2!QUOEXPDA!element],
NULL as [SOHeader!2!QUOTEDAT!element],
NULL as [SOHeader!2!CMMTTEXT!element],
NULL as [SOHeader!2!PRCLEVEL!element],
NULL as [SOHeader!2!TAXEXMT1!element],
NULL as [SOHeader!2!TAXEXMT2!element],
NULL as [SOHeader!2!TXRGNNUM!element],
NULL as [SOHeader!2!TRXSORCE!element],
NULL as [SOHeader!2!ECTRX!element],
NULL as [SOHeader!2!VOIDSTTS!element],
NULL as [SOHeader!2!REFRENCE!element],
NULL as [SOHeader!2!SHIPCOMPLETE!element],
NULL as [SOHeader!2!TXTFIELD!element],
NULL as [SOHeader!2!DISTKNAM!element],
NULL as [SOHeader!2!ORDISTKN!element],
NULL as [SOHeader!2!DUEDATE!element],
NULL as [SOHeader!2!DISCDATE!element],
NULL as [SOHeader!2!DISAVAMT!element],
NULL as [SOHeader!2!ORDAVAMT!element],
NULL as [SOHeader!2!DSCDLRAM!element],
NULL as [SOHeader!2!ORDDLRAT!element],
NULL as [SOHeader!2!DSCPCTAM!element],
NULL as [SOHeader!2!GLPOSTDT!element],
NULL as [SOHeader!2!POSTEDDT!element],
NULL as [SOHeader!2!PTDUSRID!element],
NULL as [SOHeader!2!DIRECTDEBIT!element],
NULL as [SOHeader!2!GPSFOINTEGRATIONID!element],
NULL as [SOHeader!2!INTEGRATIONSOURCE!element],
NULL as [SOHeader!2!INTEGRATIONID!element],
NULL as [SOHeader!2!INVODATE!element],
NULL as [SOHeader!2!BACKDATE!element],
NULL as [SOHeader!2!RETUDATE!element],
NULL as [SOHeader!2!WorkflowPriority!element],
NULL as [SOHeader!2!ApprovalWorkflowStatus!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
eConnect.INDEX2,
eConnect.INDEX3,
LTRIM(RTRIM([SOHeader].TrxState)),
LTRIM(RTRIM([SOHeader].SOPNUMBE)),
LTRIM(RTRIM([SOHeader].SOPTYPE)),
RTRIM([SOHeader].DOCID),RTRIM([SOHeader].ORIGTYPE),RTRIM([SOHeader].ORIGNUMB),RTRIM([SOHeader].TAXSCHID),RTRIM([SOHeader].FRTSCHID),RTRIM([SOHeader].MSCSCHID),RTRIM([SOHeader].SHIPMTHD),RTRIM([SOHeader].TAXAMNT),RTRIM([SOHeader].ORTAXAMT),RTRIM([SOHeader].LOCNCODE),[SOHeader].DOCDATE,RTRIM([SOHeader].FRTAMNT),RTRIM([SOHeader].ORFRTAMT),RTRIM([SOHeader].MISCAMNT),RTRIM([SOHeader].ORMISCAMT),RTRIM([SOHeader].TRDISAMT),RTRIM([SOHeader].ORTDISAM),RTRIM([SOHeader].TRDISPCT),RTRIM([SOHeader].MRKDNAMT),RTRIM([SOHeader].ORMRKDAM),RTRIM([SOHeader].CUSTNMBR),RTRIM([SOHeader].CUSTNAME),RTRIM([SOHeader].CSTPONBR),RTRIM([SOHeader].ShipToName),RTRIM([SOHeader].ADDRESS1),RTRIM([SOHeader].ADDRESS2),RTRIM([SOHeader].ADDRESS3),RTRIM([SOHeader].CNTCPRSN),RTRIM([SOHeader].FAXNUMBR),RTRIM([SOHeader].CITY),RTRIM([SOHeader].STATE),RTRIM([SOHeader].ZIPCODE),RTRIM([SOHeader].COUNTRY),RTRIM([SOHeader].CCode),RTRIM([SOHeader].PHNUMBR1),RTRIM([SOHeader].PHNUMBR2),RTRIM([SOHeader].PHONE3),RTRIM([SOHeader].SUBTOTAL),RTRIM([SOHeader].ORSUBTOT),RTRIM([SOHeader].DOCAMNT),RTRIM([SOHeader].ORDOCAMT),RTRIM([SOHeader].PYMTRCVD),RTRIM([SOHeader].ORPMTRVD),RTRIM([SOHeader].DEPRECVD),RTRIM([SOHeader].ORDEPRVD),RTRIM([SOHeader].SALSTERR),RTRIM([SOHeader].SLPRSNID),RTRIM([SOHeader].UPSZONE),RTRIM([SOHeader].USER2ENT),[SOHeader].CREATDDT,[SOHeader].DEX_ROW_TS,RTRIM([SOHeader].BACHNUMB),RTRIM([SOHeader].BCHSOURC),[SOHeader].BatchCreatedDate,[SOHeader].BatchCreatedTime,RTRIM([SOHeader].PRBTADCD),RTRIM([SOHeader].PRSTADCD),RTRIM([SOHeader].FRTTXAMT),RTRIM([SOHeader].ORFRTTAX),RTRIM([SOHeader].MSCTXAMT),RTRIM([SOHeader].ORMSCTAX),RTRIM([SOHeader].MSTRNUMB),RTRIM([SOHeader].PYMTRMID),RTRIM([SOHeader].COMAPPTO),RTRIM([SOHeader].COMMAMNT),RTRIM([SOHeader].OCOMMAMT),RTRIM([SOHeader].CMMSLAMT),RTRIM([SOHeader].ORCOSAMT),RTRIM([SOHeader].CURNCYID),RTRIM([SOHeader].XCHGRATE),[SOHeader].EXCHDATE,RTRIM([SOHeader].FRGTTXBL),RTRIM([SOHeader].MISCTXBL),RTRIM([SOHeader].COMMNTID),[SOHeader].ReqShipDate,[SOHeader].ACTLSHIP,[SOHeader].FUFILDAT,[SOHeader].QUOEXPDA,[SOHeader].QUOTEDAT,[SOHeader].CMMTTEXT,RTRIM([SOHeader].PRCLEVEL),RTRIM([SOHeader].TAXEXMT1),RTRIM([SOHeader].TAXEXMT2),RTRIM([SOHeader].TXRGNNUM),RTRIM([SOHeader].TRXSORCE),RTRIM([SOHeader].ECTRX),RTRIM([SOHeader].VOIDSTTS),RTRIM([SOHeader].REFRENCE),RTRIM([SOHeader].SHIPCOMPLETE),[SOHeader].TXTFIELD,RTRIM([SOHeader].DISTKNAM),RTRIM([SOHeader].ORDISTKN),[SOHeader].DUEDATE,[SOHeader].DISCDATE,RTRIM([SOHeader].DISAVAMT),RTRIM([SOHeader].ORDAVAMT),RTRIM([SOHeader].DSCDLRAM),RTRIM([SOHeader].ORDDLRAT),RTRIM([SOHeader].DSCPCTAM),[SOHeader].GLPOSTDT,[SOHeader].POSTEDDT,RTRIM([SOHeader].PTDUSRID),RTRIM([SOHeader].DIRECTDEBIT),RTRIM([SOHeader].GPSFOINTEGRATIONID),RTRIM([SOHeader].INTEGRATIONSOURCE),RTRIM([SOHeader].INTEGRATIONID),[SOHeader].INVODATE,[SOHeader].BACKDATE,[SOHeader].RETUDATE,RTRIM([SOHeader].WorkflowPriority),RTRIM([SOHeader].ApprovalWorkflowStatus) FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqSOHeaderView] [SOHeader] (nolock) on [SOHeader].SOPNUMBE = eConnect.INDEX2 and [SOHeader].SOPTYPE = eConnect.INDEX3 Order by  [eConnect!1!TrxState],  [eConnect!1!SOPNUMBE],  [eConnect!1!SOPTYPE],  [SOHeader!2!TrxState!element], [SOHeader!2!SOPNUMBE!element], [SOHeader!2!SOPTYPE!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterWSSalesInvoice1] TO [DYNGRP]
GO
