SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterWSSalesItem2] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
rtrim(cast(eConnect.INDEX1 as [char])) as [eConnect!1!ITEMNMBR],
NULL as [SALESITEM!2!ITEMNMBR!element],
NULL as [SALESITEM!2!ITEMDESC!element],
NULL as [SALESITEM!2!ITMSHNAM!element],
NULL as [SALESITEM!2!ITMGEDSC!element],
NULL as [SALESITEM!2!ITMCLSCD!element],
NULL as [SALESITEM!2!ITEMTYPE!element],
NULL as [SALESITEM!2!TAXOPTNS!element],
NULL as [SALESITEM!2!ITMTSHID!element],
NULL as [SALESITEM!2!UOMSCHDL!element],
NULL as [SALESITEM!2!ITEMSHWT!element],
NULL as [SALESITEM!2!DECPLQTY!element],
NULL as [SALESITEM!2!Purchase_Tax_Options!element],
NULL as [SALESITEM!2!Purchase_Item_Tax_Schedu!element],
NULL as [SALESITEM!2!STNDCOST!element],
NULL as [SALESITEM!2!CURRCOST!element],
NULL as [SALESITEM!2!ALTITEM1!element],
NULL as [SALESITEM!2!ALTITEM2!element],
NULL as [SALESITEM!2!INCLUDEINDP!element],
NULL as [SALESITEM!2!ALWBKORD!element],
NULL as [SALESITEM!2!WRNTYDYS!element],
NULL as [SALESITEM!2!ABCCODE!element],
NULL as [SALESITEM!2!USCATVLS_1!element],
NULL as [SALESITEM!2!USCATVLS_2!element],
NULL as [SALESITEM!2!USCATVLS_3!element],
NULL as [SALESITEM!2!USCATVLS_4!element],
NULL as [SALESITEM!2!USCATVLS_5!element],
NULL as [SALESITEM!2!USCATVLS_6!element],
NULL as [SALESITEM!2!KPCALHST!element],
NULL as [SALESITEM!2!KPERHIST!element],
NULL as [SALESITEM!2!KPTRXHST!element],
NULL as [SALESITEM!2!KPDSTHST!element],
NULL as [SALESITEM!2!IVIVACTNUMST!element],
NULL as [SALESITEM!2!IVIVOFACTNUMST!element],
NULL as [SALESITEM!2!IVCOGSACTNUMST!element],
NULL as [SALESITEM!2!IVSLSACTNUMST!element],
NULL as [SALESITEM!2!IVSLDSACTNUMST!element],
NULL as [SALESITEM!2!IVSLRNACTNUMST!element],
NULL as [SALESITEM!2!IVINUSACTNUMST!element],
NULL as [SALESITEM!2!IVINSVACTNUMST!element],
NULL as [SALESITEM!2!IVDMGACTNUMST!element],
NULL as [SALESITEM!2!IVVARACTNUMST!element],
NULL as [SALESITEM!2!DPSHPACTNUMST!element],
NULL as [SALESITEM!2!PURPVACTNUMST!element],
NULL as [SALESITEM!2!UPPVACTNUMST!element],
NULL as [SALESITEM!2!IVRETACTNUMST!element],
NULL as [SALESITEM!2!ASMVRACTNUMST!element],
NULL as [SALESITEM!2!PRCHSUOM!element],
NULL as [SALESITEM!2!LOCNCODE!element],
NULL as [SALESITEM!2!PRICMTHD!element],
NULL as [SALESITEM!2!DEX_ROW_TS!element],
NULL as [SALESITEM!2!CREATDDT!element],
NULL as [SALESITEM!2!PRCLEVEL!element],
NULL as [SALESITEM!2!SELNGUOM!element],
NULL as [SALESITEM!2!VCTNMTHD!element],
NULL as [SALESITEM!2!ITMTRKOP!element],
NULL as [SALESITEM!2!LOTTYPE!element],
NULL as [SALESITEM!2!MINSHELF1!element],
NULL as [SALESITEM!2!MINSHELF2!element],
NULL as [SALESITEM!2!Revalue_Inventory!element],
NULL as [SALESITEM!2!Tolerance_Percentage!element],
NULL as [SALESITEM!2!QTYINUSE!element],
NULL as [SALESITEM!2!QTYINSVC!element],
NULL as [SALESITEM!2!QTYRTRND!element],
NULL as [SALESITEM!2!QTYDMGED!element],
NULL as [SALESITEM!2!QTYONHND!element],
NULL as [SALESITEM!2!ATYALLOC!element],
NULL as [SALESITEM!2!QTYONORD!element],
NULL as [SALESITEM!2!QTYBKORD!element],
NULL as [SALESITEM!2!DECPLCUR!element],
NULL as [SALESITEMQUANTITY!3!ITEMNMBR!element],
NULL as [SALESITEMQUANTITY!3!LOCNCODE!element],
NULL as [SALESITEMQUANTITY!3!QTYINUSE!element],
NULL as [SALESITEMQUANTITY!3!QTYINSVC!element],
NULL as [SALESITEMQUANTITY!3!QTYRTRND!element],
NULL as [SALESITEMQUANTITY!3!QTYDMGED!element],
NULL as [SALESITEMQUANTITY!3!QTYONHND!element],
NULL as [SALESITEMQUANTITY!3!ATYALLOC!element],
NULL as [SALESITEMQUANTITY!3!QTYONORD!element],
NULL as [SALESITEMQUANTITY!3!QTYBKORD!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!ITEMNMBR!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!LOCNCODE!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!BIN!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!QTYONHND!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!ATYALLOC!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!QTYRTRND!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!QTYINUSE!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!QTYINSVC!element],
NULL as [SALESITEMQUANTITYBINDETAIL!4!QTYDMGED!element],
NULL as [ITEMINETADDRESS!5!INET1!element],
NULL as [ITEMINETADDRESS!5!INET2!element],
NULL as [ITEMINETADDRESS!5!INET3!element],
NULL as [ITEMINETADDRESS!5!INET4!element],
NULL as [ITEMINETADDRESS!5!INET5!element],
NULL as [ITEMINETADDRESS!5!INET6!element],
NULL as [ITEMINETADDRESS!5!INET7!element],
NULL as [ITEMINETADDRESS!5!INET8!element],
NULL as [ITEMINETADDRESS!5!INETINFO!element],
NULL as [ITEMINETADDRESS!5!Messenger_Address!element],
NULL as [ITEMINETADDRESS!5!EmailToAddress!element],
NULL as [ITEMINETADDRESS!5!EmailCcAddress!element],
NULL as [ITEMINETADDRESS!5!EmailBccAddress!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM([SALESITEM].ITEMNMBR)),
RTRIM([SALESITEM].ITEMDESC),RTRIM([SALESITEM].ITMSHNAM),RTRIM([SALESITEM].ITMGEDSC),RTRIM([SALESITEM].ITMCLSCD),RTRIM([SALESITEM].ITEMTYPE),RTRIM([SALESITEM].TAXOPTNS),RTRIM([SALESITEM].ITMTSHID),RTRIM([SALESITEM].UOMSCHDL),RTRIM([SALESITEM].ITEMSHWT),RTRIM([SALESITEM].DECPLQTY),RTRIM([SALESITEM].Purchase_Tax_Options),RTRIM([SALESITEM].Purchase_Item_Tax_Schedu),RTRIM([SALESITEM].STNDCOST),RTRIM([SALESITEM].CURRCOST),RTRIM([SALESITEM].ALTITEM1),RTRIM([SALESITEM].ALTITEM2),RTRIM([SALESITEM].INCLUDEINDP),RTRIM([SALESITEM].ALWBKORD),RTRIM([SALESITEM].WRNTYDYS),RTRIM([SALESITEM].ABCCODE),RTRIM([SALESITEM].USCATVLS_1),RTRIM([SALESITEM].USCATVLS_2),RTRIM([SALESITEM].USCATVLS_3),RTRIM([SALESITEM].USCATVLS_4),RTRIM([SALESITEM].USCATVLS_5),RTRIM([SALESITEM].USCATVLS_6),RTRIM([SALESITEM].KPCALHST),RTRIM([SALESITEM].KPERHIST),RTRIM([SALESITEM].KPTRXHST),RTRIM([SALESITEM].KPDSTHST),RTRIM([SALESITEM].IVIVACTNUMST),RTRIM([SALESITEM].IVIVOFACTNUMST),RTRIM([SALESITEM].IVCOGSACTNUMST),RTRIM([SALESITEM].IVSLSACTNUMST),RTRIM([SALESITEM].IVSLDSACTNUMST),RTRIM([SALESITEM].IVSLRNACTNUMST),RTRIM([SALESITEM].IVINUSACTNUMST),RTRIM([SALESITEM].IVINSVACTNUMST),RTRIM([SALESITEM].IVDMGACTNUMST),RTRIM([SALESITEM].IVVARACTNUMST),RTRIM([SALESITEM].DPSHPACTNUMST),RTRIM([SALESITEM].PURPVACTNUMST),RTRIM([SALESITEM].UPPVACTNUMST),RTRIM([SALESITEM].IVRETACTNUMST),RTRIM([SALESITEM].ASMVRACTNUMST),RTRIM([SALESITEM].PRCHSUOM),RTRIM([SALESITEM].LOCNCODE),RTRIM([SALESITEM].PRICMTHD),[SALESITEM].DEX_ROW_TS,[SALESITEM].CREATDDT,RTRIM([SALESITEM].PRCLEVEL),RTRIM([SALESITEM].SELNGUOM),RTRIM([SALESITEM].VCTNMTHD),RTRIM([SALESITEM].ITMTRKOP),RTRIM([SALESITEM].LOTTYPE),RTRIM([SALESITEM].MINSHELF1),RTRIM([SALESITEM].MINSHELF2),RTRIM([SALESITEM].Revalue_Inventory),RTRIM([SALESITEM].Tolerance_Percentage),RTRIM([SALESITEM].QTYINUSE),RTRIM([SALESITEM].QTYINSVC),RTRIM([SALESITEM].QTYRTRND),RTRIM([SALESITEM].QTYDMGED),RTRIM([SALESITEM].QTYONHND),RTRIM([SALESITEM].ATYALLOC),RTRIM([SALESITEM].QTYONORD),RTRIM([SALESITEM].QTYBKORD),RTRIM([SALESITEM].DECPLCUR),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqIVSalesItem] [SALESITEM] (nolock) on [SALESITEM].ITEMNMBR = eConnect.INDEX1 UNION ALL Select 3,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(SALESITEM.ITEMNMBR)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([SALESITEMQUANTITY].ITEMNMBR)),
LTRIM(RTRIM([SALESITEMQUANTITY].LOCNCODE)),
RTRIM([SALESITEMQUANTITY].QTYINUSE),RTRIM([SALESITEMQUANTITY].QTYINSVC),RTRIM([SALESITEMQUANTITY].QTYRTRND),RTRIM([SALESITEMQUANTITY].QTYDMGED),RTRIM([SALESITEMQUANTITY].QTYONHND),RTRIM([SALESITEMQUANTITY].ATYALLOC),RTRIM([SALESITEMQUANTITY].QTYONORD),RTRIM([SALESITEMQUANTITY].QTYBKORD),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqIVSalesItem] [SALESITEM] (nolock) on [SALESITEM].ITEMNMBR = eConnect.INDEX1 left outer join [ReqIVItemQuantity] [SALESITEMQUANTITY] (nolock) on SALESITEMQUANTITY.ITEMNMBR = SALESITEM.ITEMNMBR UNION ALL Select 4,3,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(SALESITEM.ITEMNMBR)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM(SALESITEMQUANTITY.ITEMNMBR)),
LTRIM(RTRIM(SALESITEMQUANTITY.LOCNCODE)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,RTRIM([SALESITEMQUANTITYBINDETAIL].ITEMNMBR),RTRIM([SALESITEMQUANTITYBINDETAIL].LOCNCODE),RTRIM([SALESITEMQUANTITYBINDETAIL].BIN),RTRIM([SALESITEMQUANTITYBINDETAIL].QTYONHND),RTRIM([SALESITEMQUANTITYBINDETAIL].ATYALLOC),RTRIM([SALESITEMQUANTITYBINDETAIL].QTYRTRND),RTRIM([SALESITEMQUANTITYBINDETAIL].QTYINUSE),RTRIM([SALESITEMQUANTITYBINDETAIL].QTYINSVC),RTRIM([SALESITEMQUANTITYBINDETAIL].QTYDMGED),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqIVSalesItem] [SALESITEM] (nolock) on [SALESITEM].ITEMNMBR = eConnect.INDEX1 left outer join [ReqIVItemQuantity] [SALESITEMQUANTITY] (nolock) on SALESITEMQUANTITY.ITEMNMBR = SALESITEM.ITEMNMBR left outer join [ReqIVItemQuantityBinDetail] [SALESITEMQUANTITYBINDETAIL] (nolock) on SALESITEMQUANTITYBINDETAIL.ITEMNMBR = SALESITEMQUANTITY.ITEMNMBR and SALESITEMQUANTITYBINDETAIL.LOCNCODE = SALESITEMQUANTITY.LOCNCODE UNION ALL Select 5,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
LTRIM(RTRIM(SALESITEM.ITEMNMBR)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,RTRIM([ITEMINETADDRESS].INET1),RTRIM([ITEMINETADDRESS].INET2),RTRIM([ITEMINETADDRESS].INET3),RTRIM([ITEMINETADDRESS].INET4),RTRIM([ITEMINETADDRESS].INET5),RTRIM([ITEMINETADDRESS].INET6),RTRIM([ITEMINETADDRESS].INET7),RTRIM([ITEMINETADDRESS].INET8),[ITEMINETADDRESS].INETINFO,RTRIM([ITEMINETADDRESS].Messenger_Address),[ITEMINETADDRESS].EmailToAddress,[ITEMINETADDRESS].EmailCcAddress,[ITEMINETADDRESS].EmailBccAddress FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [ReqIVSalesItem] [SALESITEM] (nolock) on [SALESITEM].ITEMNMBR = eConnect.INDEX1 left outer join [ReqIVItemInetAddress] [ITEMINETADDRESS] (nolock) on ITEMINETADDRESS.Master_ID = SALESITEM.ITEMNMBR Order by  [eConnect!1!ITEMNMBR],  [SALESITEM!2!ITEMNMBR!element], [SALESITEMQUANTITY!3!ITEMNMBR!element], [SALESITEMQUANTITY!3!LOCNCODE!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterWSSalesItem2] TO [DYNGRP]
GO
