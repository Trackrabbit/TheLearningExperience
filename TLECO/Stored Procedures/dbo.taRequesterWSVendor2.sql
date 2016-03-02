SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterWSVendor2] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
rtrim(cast(eConnect.INDEX1 as [char])) as [eConnect!1!VENDORID],
NULL as [VENDOR!2!VENDORID!element],
NULL as [VENDOR!2!VENDNAME!element],
NULL as [VENDOR!2!VENDSHNM!element],
NULL as [VENDOR!2!VNDCHKNM!element],
NULL as [VENDOR!2!HOLD!element],
NULL as [VENDOR!2!VENDSTTS!element],
NULL as [VENDOR!2!VNDCLSID!element],
NULL as [VENDOR!2!VADDCDPR!element],
NULL as [VENDOR!2!VNDCNTCT!element],
NULL as [VENDOR!2!ADDRESS1!element],
NULL as [VENDOR!2!ADDRESS2!element],
NULL as [VENDOR!2!ADDRESS3!element],
NULL as [VENDOR!2!CITY!element],
NULL as [VENDOR!2!STATE!element],
NULL as [VENDOR!2!ZIPCODE!element],
NULL as [VENDOR!2!CCode!element],
NULL as [VENDOR!2!COUNTRY!element],
NULL as [VENDOR!2!PHNUMBR1!element],
NULL as [VENDOR!2!PHNUMBR2!element],
NULL as [VENDOR!2!PHONE3!element],
NULL as [VENDOR!2!FAXNUMBR!element],
NULL as [VENDOR!2!TAXSCHID!element],
NULL as [VENDOR!2!SHIPMTHD!element],
NULL as [VENDOR!2!UPSZONE!element],
NULL as [VENDOR!2!VADCDPAD!element],
NULL as [VENDOR!2!VADCDTRO!element],
NULL as [VENDOR!2!VADCDSFR!element],
NULL as [VENDOR!2!ACNMVNDR!element],
NULL as [VENDOR!2!COMMENT1!element],
NULL as [VENDOR!2!COMMENT2!element],
NULL as [VENDOR!2!TXTFIELD!element],
NULL as [VENDOR!2!CURNCYID!element],
NULL as [VENDOR!2!RATETPID!element],
NULL as [VENDOR!2!PYMTRMID!element],
NULL as [VENDOR!2!DISGRPER!element],
NULL as [VENDOR!2!DUEGRPER!element],
NULL as [VENDOR!2!PYMNTPRI!element],
NULL as [VENDOR!2!MINORDER!element],
NULL as [VENDOR!2!TRDDISCT!element],
NULL as [VENDOR!2!TXIDNMBR!element],
NULL as [VENDOR!2!TXRGNNUM!element],
NULL as [VENDOR!2!CHEKBKID!element],
NULL as [VENDOR!2!USERDEF1!element],
NULL as [VENDOR!2!USERDEF2!element],
NULL as [VENDOR!2!TEN99TYPE!element],
NULL as [VENDOR!2!TEN99BOXNUMBER!element],
NULL as [VENDOR!2!FREEONBOARD!element],
NULL as [VENDOR!2!USERLANG!element],
NULL as [VENDOR!2!MINPYTYP!element],
NULL as [VENDOR!2!MINPYDLR!element],
NULL as [VENDOR!2!MINPYPCT!element],
NULL as [VENDOR!2!MXIAFVND!element],
NULL as [VENDOR!2!MAXINDLR!element],
NULL as [VENDOR!2!CREDTLMT!element],
NULL as [VENDOR!2!CRLMTDLR!element],
NULL as [VENDOR!2!WRITEOFF!element],
NULL as [VENDOR!2!MXWOFAMT!element],
NULL as [VENDOR!2!Revalue_Vendor!element],
NULL as [VENDOR!2!Post_Results_To!element],
NULL as [VENDOR!2!KPCALHST!element],
NULL as [VENDOR!2!KPERHIST!element],
NULL as [VENDOR!2!KPTRXHST!element],
NULL as [VENDOR!2!KGLDSTHS!element],
NULL as [VENDOR!2!PTCSHACF!element],
NULL as [VENDOR!2!PMCSHACTNUMST!element],
NULL as [VENDOR!2!PMAPACTNUMST!element],
NULL as [VENDOR!2!PMDAVACTNUMST!element],
NULL as [VENDOR!2!PMDTKACTNUMST!element],
NULL as [VENDOR!2!PMFINACTNUMST!element],
NULL as [VENDOR!2!PMPRCHACTNUMST!element],
NULL as [VENDOR!2!PMTDSCACTNUMST!element],
NULL as [VENDOR!2!PMMSCHACTNUMST!element],
NULL as [VENDOR!2!PMFRTACTNUMST!element],
NULL as [VENDOR!2!PMTAXACTNUMST!element],
NULL as [VENDOR!2!PMWRTACTNUMST!element],
NULL as [VENDOR!2!ACPURACTNUMST!element],
NULL as [VENDOR!2!PURPVACTNUMST!element],
NULL as [VENDOR!2!CREATDDT!element],
NULL as [VENDOR!2!DEX_ROW_TS!element],
NULL as [VENDOR!2!ApprovalWorkflowStatus!element],
NULL as [VENDOR!2!WorkflowPriority!element],
NULL as [VENDOR!2!LANGNAME!element],
NULL as [VENDORPAOPTIONS!3!VENDORID!element],
NULL as [VENDORPAOPTIONS!3!VNDCLSID!element],
NULL as [VENDORPAOPTIONS!3!PAddlDefpoformatouse!element],
NULL as [VENDORPAOPTIONS!3!PAUnit_of_Measure!element],
NULL as [VENDORPAOPTIONS!3!PAUNITCOST!element],
NULL as [VENDORPAOPTIONS!3!PATMProfitType!element],
NULL as [VENDORPAOPTIONS!3!PATMProfitAmount!element],
NULL as [VENDORPAOPTIONS!3!PATMProfitPercent!element],
NULL as [VENDORPAOPTIONS!3!PAFFProfitType!element],
NULL as [VENDORPAOPTIONS!3!PAFFProfitAmount!element],
NULL as [VENDORPAOPTIONS!3!PAFFProfitPercent!element],
NULL as [VENDORPAOPTIONS!3!PAProfit_Type__CP!element],
NULL as [VENDORPAOPTIONS!3!PAProfitAmountCP!element],
NULL as [VENDORPAOPTIONS!3!PAProfitPercentCP!element],
NULL as [VENDORPAOPTIONS!3!PAUD1!element],
NULL as [VENDORPAOPTIONS!3!PAUD2!element],
NULL as [VENDORADDRESS!4!VENDORID!element],
NULL as [VENDORADDRESS!4!ADRSCODE!element],
NULL as [VENDORADDRESS!4!UPSZONE!element],
NULL as [VENDORADDRESS!4!SHIPMTHD!element],
NULL as [VENDORADDRESS!4!TAXSCHID!element],
NULL as [VENDORADDRESS!4!VNDCNTCT!element],
NULL as [VENDORADDRESS!4!ADDRESS1!element],
NULL as [VENDORADDRESS!4!ADDRESS2!element],
NULL as [VENDORADDRESS!4!ADDRESS3!element],
NULL as [VENDORADDRESS!4!COUNTRY!element],
NULL as [VENDORADDRESS!4!CITY!element],
NULL as [VENDORADDRESS!4!STATE!element],
NULL as [VENDORADDRESS!4!ZIPCODE!element],
NULL as [VENDORADDRESS!4!PHNUMBR1!element],
NULL as [VENDORADDRESS!4!PHNUMBR2!element],
NULL as [VENDORADDRESS!4!PHONE3!element],
NULL as [VENDORADDRESS!4!FAXNUMBR!element],
NULL as [VENDORADDRESS!4!CCode!element],
NULL as [VENDORINETADDRESS!5!INET1!element],
NULL as [VENDORINETADDRESS!5!INET2!element],
NULL as [VENDORINETADDRESS!5!INET3!element],
NULL as [VENDORINETADDRESS!5!INET4!element],
NULL as [VENDORINETADDRESS!5!INET5!element],
NULL as [VENDORINETADDRESS!5!INET6!element],
NULL as [VENDORINETADDRESS!5!INET7!element],
NULL as [VENDORINETADDRESS!5!INET8!element],
NULL as [VENDORINETADDRESS!5!INETINFO!element],
NULL as [VENDORINETADDRESS!5!Messenger_Address!element],
NULL as [VENDORINETADDRESS!5!EmailToAddress!element],
NULL as [VENDORINETADDRESS!5!EmailCcAddress!element],
NULL as [VENDORINETADDRESS!5!EmailBccAddress!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM([VENDOR].VENDORID)),
RTRIM([VENDOR].VENDNAME),RTRIM([VENDOR].VENDSHNM),RTRIM([VENDOR].VNDCHKNM),RTRIM([VENDOR].HOLD),RTRIM([VENDOR].VENDSTTS),RTRIM([VENDOR].VNDCLSID),RTRIM([VENDOR].VADDCDPR),RTRIM([VENDOR].VNDCNTCT),RTRIM([VENDOR].ADDRESS1),RTRIM([VENDOR].ADDRESS2),RTRIM([VENDOR].ADDRESS3),RTRIM([VENDOR].CITY),RTRIM([VENDOR].STATE),RTRIM([VENDOR].ZIPCODE),RTRIM([VENDOR].CCode),RTRIM([VENDOR].COUNTRY),RTRIM([VENDOR].PHNUMBR1),RTRIM([VENDOR].PHNUMBR2),RTRIM([VENDOR].PHONE3),RTRIM([VENDOR].FAXNUMBR),RTRIM([VENDOR].TAXSCHID),RTRIM([VENDOR].SHIPMTHD),RTRIM([VENDOR].UPSZONE),RTRIM([VENDOR].VADCDPAD),RTRIM([VENDOR].VADCDTRO),RTRIM([VENDOR].VADCDSFR),RTRIM([VENDOR].ACNMVNDR),RTRIM([VENDOR].COMMENT1),RTRIM([VENDOR].COMMENT2),[VENDOR].TXTFIELD,RTRIM([VENDOR].CURNCYID),RTRIM([VENDOR].RATETPID),RTRIM([VENDOR].PYMTRMID),RTRIM([VENDOR].DISGRPER),RTRIM([VENDOR].DUEGRPER),RTRIM([VENDOR].PYMNTPRI),RTRIM([VENDOR].MINORDER),RTRIM([VENDOR].TRDDISCT),RTRIM([VENDOR].TXIDNMBR),RTRIM([VENDOR].TXRGNNUM),RTRIM([VENDOR].CHEKBKID),RTRIM([VENDOR].USERDEF1),RTRIM([VENDOR].USERDEF2),RTRIM([VENDOR].TEN99TYPE),RTRIM([VENDOR].TEN99BOXNUMBER),RTRIM([VENDOR].FREEONBOARD),RTRIM([VENDOR].USERLANG),RTRIM([VENDOR].MINPYTYP),RTRIM([VENDOR].MINPYDLR),RTRIM([VENDOR].MINPYPCT),RTRIM([VENDOR].MXIAFVND),RTRIM([VENDOR].MAXINDLR),RTRIM([VENDOR].CREDTLMT),RTRIM([VENDOR].CRLMTDLR),RTRIM([VENDOR].WRITEOFF),RTRIM([VENDOR].MXWOFAMT),RTRIM([VENDOR].Revalue_Vendor),RTRIM([VENDOR].Post_Results_To),RTRIM([VENDOR].KPCALHST),RTRIM([VENDOR].KPERHIST),RTRIM([VENDOR].KPTRXHST),RTRIM([VENDOR].KGLDSTHS),RTRIM([VENDOR].PTCSHACF),RTRIM([VENDOR].PMCSHACTNUMST),RTRIM([VENDOR].PMAPACTNUMST),RTRIM([VENDOR].PMDAVACTNUMST),RTRIM([VENDOR].PMDTKACTNUMST),RTRIM([VENDOR].PMFINACTNUMST),RTRIM([VENDOR].PMPRCHACTNUMST),RTRIM([VENDOR].PMTDSCACTNUMST),RTRIM([VENDOR].PMMSCHACTNUMST),RTRIM([VENDOR].PMFRTACTNUMST),RTRIM([VENDOR].PMTAXACTNUMST),RTRIM([VENDOR].PMWRTACTNUMST),RTRIM([VENDOR].ACPURACTNUMST),RTRIM([VENDOR].PURPVACTNUMST),[VENDOR].CREATDDT,[VENDOR].DEX_ROW_TS,RTRIM([VENDOR].ApprovalWorkflowStatus),RTRIM([VENDOR].WorkflowPriority),RTRIM([VENDOR].LANGNAME),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqPMVendor] [VENDOR] (nolock) on [VENDOR].VENDORID = eConnect.INDEX1 UNION ALL Select 3,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(VENDOR.VENDORID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,RTRIM([VENDORPAOPTIONS].VENDORID),RTRIM([VENDORPAOPTIONS].VNDCLSID),RTRIM([VENDORPAOPTIONS].PAddlDefpoformatouse),RTRIM([VENDORPAOPTIONS].PAUnit_of_Measure),RTRIM([VENDORPAOPTIONS].PAUNITCOST),RTRIM([VENDORPAOPTIONS].PATMProfitType),RTRIM([VENDORPAOPTIONS].PATMProfitAmount),RTRIM([VENDORPAOPTIONS].PATMProfitPercent),RTRIM([VENDORPAOPTIONS].PAFFProfitType),RTRIM([VENDORPAOPTIONS].PAFFProfitAmount),RTRIM([VENDORPAOPTIONS].PAFFProfitPercent),RTRIM([VENDORPAOPTIONS].PAProfit_Type__CP),RTRIM([VENDORPAOPTIONS].PAProfitAmountCP),RTRIM([VENDORPAOPTIONS].PAProfitPercentCP),RTRIM([VENDORPAOPTIONS].PAUD1),RTRIM([VENDORPAOPTIONS].PAUD2),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqPMVendor] [VENDOR] (nolock) on [VENDOR].VENDORID = eConnect.INDEX1 left outer join [ReqPMVendorPAOptions] [VENDORPAOPTIONS] (nolock) on VENDORPAOPTIONS.VENDORID = VENDOR.VENDORID UNION ALL Select 4,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(VENDOR.VENDORID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([VENDORADDRESS].VENDORID)),
LTRIM(RTRIM([VENDORADDRESS].ADRSCODE)),
RTRIM([VENDORADDRESS].UPSZONE),RTRIM([VENDORADDRESS].SHIPMTHD),RTRIM([VENDORADDRESS].TAXSCHID),RTRIM([VENDORADDRESS].VNDCNTCT),RTRIM([VENDORADDRESS].ADDRESS1),RTRIM([VENDORADDRESS].ADDRESS2),RTRIM([VENDORADDRESS].ADDRESS3),RTRIM([VENDORADDRESS].COUNTRY),RTRIM([VENDORADDRESS].CITY),RTRIM([VENDORADDRESS].STATE),RTRIM([VENDORADDRESS].ZIPCODE),RTRIM([VENDORADDRESS].PHNUMBR1),RTRIM([VENDORADDRESS].PHNUMBR2),RTRIM([VENDORADDRESS].PHONE3),RTRIM([VENDORADDRESS].FAXNUMBR),RTRIM([VENDORADDRESS].CCode),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqPMVendor] [VENDOR] (nolock) on [VENDOR].VENDORID = eConnect.INDEX1 left outer join [PM00300] [VENDORADDRESS] (nolock) on VENDORADDRESS.VENDORID = VENDOR.VENDORID UNION ALL Select 5,4,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(VENDOR.VENDORID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM(VENDORADDRESS.VENDORID)),
LTRIM(RTRIM(VENDORADDRESS.ADRSCODE)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,RTRIM([VENDORINETADDRESS].INET1),RTRIM([VENDORINETADDRESS].INET2),RTRIM([VENDORINETADDRESS].INET3),RTRIM([VENDORINETADDRESS].INET4),RTRIM([VENDORINETADDRESS].INET5),RTRIM([VENDORINETADDRESS].INET6),RTRIM([VENDORINETADDRESS].INET7),RTRIM([VENDORINETADDRESS].INET8),[VENDORINETADDRESS].INETINFO,RTRIM([VENDORINETADDRESS].Messenger_Address),[VENDORINETADDRESS].EmailToAddress,[VENDORINETADDRESS].EmailCcAddress,[VENDORINETADDRESS].EmailBccAddress FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqPMVendor] [VENDOR] (nolock) on [VENDOR].VENDORID = eConnect.INDEX1 left outer join [PM00300] [VENDORADDRESS] (nolock) on VENDORADDRESS.VENDORID = VENDOR.VENDORID left outer join [ReqPMVendorInetAddress] [VENDORINETADDRESS] (nolock) on VENDORINETADDRESS.Master_ID = VENDORADDRESS.VENDORID and VENDORINETADDRESS.ADRSCODE = VENDORADDRESS.ADRSCODE Order by  [eConnect!1!VENDORID],  [VENDOR!2!VENDORID!element], [VENDORADDRESS!4!VENDORID!element], [VENDORADDRESS!4!ADRSCODE!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterWSVendor2] TO [DYNGRP]
GO
