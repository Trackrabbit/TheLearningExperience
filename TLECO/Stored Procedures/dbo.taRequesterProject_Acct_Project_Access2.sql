SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taRequesterProject_Acct_Project_Access2] @I_vDOCTYPE varchar(50),@I_vOUTPUTTYPE int = 0,@I_vINDEX1TO varchar(75)='',@I_vINDEX2TO varchar(75)='',@I_vINDEX3TO varchar(75)='',@I_vINDEX4TO varchar(75)='',@I_vINDEX5TO varchar(75)='',@I_vINDEX6TO varchar(75)='',@I_vINDEX7TO varchar(75)='',@I_vINDEX8TO varchar(75)='',@I_vINDEX9TO varchar(75)='',@I_vINDEX10TO varchar(75)='',@I_vINDEX11TO varchar(75)='',@I_vINDEX12TO varchar(75)='',@I_vINDEX13TO varchar(75)='',@I_vINDEX14TO varchar(75)='',@I_vINDEX15TO varchar(75)='',@I_vINDEX1FROM varchar(75)='',@I_vINDEX2FROM varchar(75)='',@I_vINDEX3FROM varchar(75)='',@I_vINDEX4FROM varchar(75)='',@I_vINDEX5FROM varchar(75)='',@I_vINDEX6FROM varchar(75)='',@I_vINDEX7FROM varchar(75)='',@I_vINDEX8FROM varchar(75)='',@I_vINDEX9FROM varchar(75)='',@I_vINDEX10FROM varchar(75)='',@I_vINDEX11FROM varchar(75)='',@I_vINDEX12FROM varchar(75)='',@I_vINDEX13FROM varchar(75)='',@I_vINDEX14FROM varchar(75)='',@I_vINDEX15FROM varchar(75)='',@I_vFORLOAD int=0,@I_vFORLIST int=0,@I_vACTION  int=0,@I_vROWCOUNT int=0,@I_vREMOVE int=0,@I_vWhereClause varchar(1000)=''  with encryption AS  declare @WhereNotExistsStatement varchar(8000),@Orderbystatement varchar(8000),@statement01 varchar(4000),@WhereStatement varchar(8000),@InsertStatement varchar(8000),@InsertStatement2 varchar(8000),@ColumnName varchar(50), @x int, @IndexName varchar(50),@INDEXCNT int, @TABLENAME varchar(30),@TagNumber int,@TableCount int,@Y int,@fill char(1),@fill2 char(2),@delete varchar(1000),@dbname varchar(50)  select @fill = char(39),@fill2 = char(39)+char(39),@Orderbystatement=' order by ',@statement01 ='',@WhereStatement ='',@INDEXCNT = 0,@TABLENAME = '',@InsertStatement = '',@InsertStatement2 = '',@dbname = ''  set nocount on  select @dbname = db_name()  select * into #eConnect_Out from eConnect_Out (nolock) where DOCTYPE = 'BUILD' create table #Column(ColumnName varchar(50))  if (@I_vFORLIST =1) begin  select @I_vFORLOAD=0,@I_vACTION=0,@I_vREMOVE=0 end  if (@I_vFORLOAD = 1) or (@I_vFORLIST =1) begin  select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = 1   if (@I_vFORLOAD = 1) select @statement01 = 'insert into eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vFORLIST =1) select @statement01 = 'insert into #eConnect_Out(DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION,REPLICATE,DBNAME) select ' + char(10)  if (@I_vROWCOUNT > 0)   begin  select @statement01 = @statement01 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @statement01 = @statement01 + @fill + @fill + ',' + @fill + @TABLENAME + @fill + ',DEX_ROW_ID,' + @fill + @I_vDOCTYPE + @fill + ',' + char(10)  select @x = 1  while (@x <= 15)  begin  if (@x <= @INDEXCNT)  begin  exec('insert into #Column select INDEX' + @x + ' from eConnect_Out_Setup (nolock) where DOCTYPE = ''' + @I_vDOCTYPE + ''' and MAIN = 1')  select @ColumnName = ColumnName from #Column  select @statement01 = @statement01 + rtrim(@ColumnName)  select @Orderbystatement = @Orderbystatement  + rtrim(@ColumnName)   truncate table #Column if ((@x = 1) and ((@I_vINDEX1FROM <> '') or (@I_vINDEX1TO <> '')))  begin   select @WhereStatement = @WhereStatement + ' where ' + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''   if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = ' and not exists ( select 1 from eConnect_Out where INDEX1 = '+ '''' + @I_vINDEX1FROM + ''''   end  end  else  begin  if (@I_vFORLIST <> 1)  begin  select @WhereNotExistsStatement = @WhereNotExistsStatement + ' and INDEX'+ltrim(rtrim(str(@x)))+' = '+   case  when @x = 2 then @I_vINDEX2FROM  when @x = 3 then @I_vINDEX3FROM  when @x = 4 then @I_vINDEX4FROM  when @x = 5 then @I_vINDEX5FROM  when @x = 6 then @I_vINDEX6FROM  when @x = 7 then @I_vINDEX7FROM  when @x = 8 then @I_vINDEX8FROM  when @x = 9 then @I_vINDEX9FROM  when @x = 10 then @I_vINDEX10FROM  when @x = 11 then @I_vINDEX11FROM  when @x = 12 then @I_vINDEX12FROM  when @x = 13 then @I_vINDEX13FROM  when @x = 14 then @I_vINDEX14FROM  when @x = 15 then @I_vINDEX15FROM  end   end  end if ((@x = 2) and ((@I_vINDEX2FROM <> '') or (@I_vINDEX2TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  end   if ((@x = 3) and ((@I_vINDEX3FROM <> '') or (@I_vINDEX3TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  end   if ((@x = 4) and ((@I_vINDEX4FROM <> '') or (@I_vINDEX4TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  end   if ((@x = 5) and ((@I_vINDEX5FROM <> '') or (@I_vINDEX5TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  end   if ((@x = 6) and ((@I_vINDEX6FROM <> '') or (@I_vINDEX6TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  end   if ((@x = 7) and ((@I_vINDEX7FROM <> '') or (@I_vINDEX7TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  end   if ((@x = 8) and ((@I_vINDEX8FROM <> '') or (@I_vINDEX8TO <> '')))   begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  end   if ((@x = 9) and ((@I_vINDEX9FROM <> '') or (@I_vINDEX9TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  end   if ((@x = 10) and ((@I_vINDEX10FROM <> '') or (@I_vINDEX10TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  end   if ((@x = 11) and ((@I_vINDEX11FROM <> '') or (@I_vINDEX11TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  end   if ((@x = 12) and ((@I_vINDEX12FROM <> '') or (@I_vINDEX12TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  end   if ((@x = 13) and ((@I_vINDEX13FROM <> '') or (@I_vINDEX13TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  end   if ((@x = 14) and ((@I_vINDEX14FROM <> '') or (@I_vINDEX14TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  end   if ((@x = 15) and ((@I_vINDEX15FROM <> '') or (@I_vINDEX15TO <> '')))  begin  if len(@WhereStatement) = 0 select @WhereStatement =+ ' where '  if len(@WhereStatement) > 20 select @WhereStatement = @WhereStatement + ' and '  select @WhereStatement = @WhereStatement + rtrim(@ColumnName) + ' between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  end  end   else  select @statement01 = @statement01 + @fill2   select @statement01 = @statement01 + ',' + CHAR(10)  if (@x < @INDEXCNT)  begin  select @Orderbystatement = @Orderbystatement + ','  end  select @x = @x + 1  end   select @WhereNotExistsStatement = @WhereNotExistsStatement + ')'   if (@I_vWhereClause <> '') and (@WhereStatement <> '')   begin  select @I_vWhereClause = ' and ' + rtrim(@I_vWhereClause)  + CHAR(10)  end  else if (@I_vWhereClause <> '') and (@WhereStatement = '')   begin  select @I_vWhereClause = ' where ' + rtrim(@I_vWhereClause)  + CHAR(10)  end   if (@I_vFORLIST =1)  begin  select @statement01 = @statement01 + '0,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '  end  else  select @statement01 = @statement01 + '1,0,' + @fill + @dbname + @fill + ' from ' + @TABLENAME + ' (nolock) '   exec (@statement01+@WhereStatement +@WhereNotExistsStatement+ @I_vWhereClause + @Orderbystatement) end else  if (@I_vFORLIST <>1) begin   select @INDEXCNT=INDEXCNT,@TABLENAME=TABLENAME from eConnect_Out_Setup (nolock) where DOCTYPE = @I_vDOCTYPE and MAIN = '1'   select @InsertStatement = 'insert into #eConnect_Out ( DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,' + CHAR(10)   if (@I_vROWCOUNT > 0)   begin  select @InsertStatement2 = @InsertStatement2 + ' TOP ' + str(@I_vROWCOUNT) + ' '  end   select @InsertStatement2 = @InsertStatement2 + ' DATE1,TABLENAME,DEX_ROW_ID,DOCTYPE,'   select @x = 1  while (@x <= 15)  begin  select @InsertStatement = @InsertStatement + 'INDEX' + ltrim(str(@x))  select @InsertStatement = @InsertStatement + ',' + CHAR(10)   if (@x <= @INDEXCNT)  begin  select @InsertStatement2 = @InsertStatement2 + 'INDEX' + ltrim(str(@x))  end  else  select @InsertStatement2 = @InsertStatement2 + ''''''   select @InsertStatement2 = @InsertStatement2 + ',' + CHAR(10)   select @x = @x + 1  end   select @InsertStatement = @InsertStatement + 'ACTION,REPLICATE,DBNAME)' + CHAR(10) + ' select '  select @InsertStatement2 = @InsertStatement2 + 'ACTION,REPLICATE,DBNAME' + CHAR(10)  select @InsertStatement2 = @InsertStatement2 + ' from eConnect_Out (nolock) where DOCTYPE = ''' + @I_vDOCTYPE +  ''''   if (@I_vACTION > 0)   begin  if (@I_vACTION = 4) or (@I_vACTION = 5)  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION between 1 and 2 '  end  else  begin  select @InsertStatement2 = @InsertStatement2 +  ' and ACTION = ' + ltrim(str(@I_vACTION))  end  end select @x = 1  while ((@x <= @INDEXCNT) and (@I_vINDEX1FROM <> ''))  begin  if ((@x = 1) and (@I_vINDEX1FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX1 between ''' + replace(rtrim(@I_vINDEX1FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX1TO),'''','''''') + ''''  if ((@x = 2) and (@I_vINDEX2FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX2 between ''' + replace(rtrim(@I_vINDEX2FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX2TO),'''','''''') + ''''  if ((@x = 3) and (@I_vINDEX3FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX3 between ''' + replace(rtrim(@I_vINDEX3FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX3TO),'''','''''') + ''''  if ((@x = 4) and (@I_vINDEX4FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX4 between ''' + replace(rtrim(@I_vINDEX4FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX4TO),'''','''''') + ''''  if ((@x = 5) and (@I_vINDEX5FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX5 between ''' + replace(rtrim(@I_vINDEX5FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX5TO),'''','''''') + ''''  if ((@x = 6) and (@I_vINDEX6FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX6 between ''' + replace(rtrim(@I_vINDEX6FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX6TO),'''','''''') + ''''  if ((@x = 7) and (@I_vINDEX7FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX7 between ''' + replace(rtrim(@I_vINDEX7FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX7TO),'''','''''') + ''''  if ((@x = 8) and (@I_vINDEX8FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX8 between ''' + replace(rtrim(@I_vINDEX8FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX8TO),'''','''''') + ''''  if ((@x = 9) and (@I_vINDEX9FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX9 between ''' + replace(rtrim(@I_vINDEX9FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX9TO),'''','''''') + ''''  if ((@x = 10) and (@I_vINDEX10FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX10 between ''' + replace(rtrim(@I_vINDEX10FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX10TO),'''','''''') + ''''  if ((@x = 11) and (@I_vINDEX11FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX11 between ''' + replace(rtrim(@I_vINDEX11FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX11TO),'''','''''') + ''''  if ((@x = 12) and (@I_vINDEX12FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX12 between ''' + replace(rtrim(@I_vINDEX12FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX12TO),'''','''''') + ''''  if ((@x = 13) and (@I_vINDEX13FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX13 between ''' + replace(rtrim(@I_vINDEX13FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX13TO),'''','''''') + ''''  if ((@x = 14) and (@I_vINDEX14FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX14 between ''' + replace(rtrim(@I_vINDEX14FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX14TO),'''','''''') + ''''  if ((@x = 15) and (@I_vINDEX15FROM <> ''))   select @InsertStatement2 = @InsertStatement2 + ' and INDEX15 between ''' + replace(rtrim(@I_vINDEX15FROM),'''','''''') + ''' and ''' + replace(rtrim(@I_vINDEX15TO),'''','''''') + ''''  select @x = @x + 1  end   exec (@InsertStatement+@InsertStatement2)   select @delete = 'delete a from #eConnect_Out a, tempdb.dbo.DEX_LOCK b (nolock) where a.DEX_ROW_ID = b.row_id and  b.table_path_name = ''' + db_name() + '.dbo.' + @TABLENAME + ''''  exec (@delete) end  if (@I_vREMOVE = 1) and (@I_vFORLIST = 0) begin  delete a from eConnect_Out a (updlock), #eConnect_Out b  where a.DOCTYPE = b.DOCTYPE and  a.INDEX1 = b.INDEX1 and  a.INDEX2 = b.INDEX2 and  a.INDEX3 = b.INDEX3 and  a.INDEX4 = b.INDEX4 and  a.INDEX5 = b.INDEX5 and  a.INDEX6 = b.INDEX6 and  a.INDEX7 = b.INDEX7 and  a.INDEX8 = b.INDEX8 and  a.INDEX9 = b.INDEX9 and  a.INDEX10 = b.INDEX10 and  a.INDEX11 = b.INDEX11 and  a.INDEX12 = b.INDEX12 and  a.INDEX13 = b.INDEX13 and  a.INDEX14 = b.INDEX14 and  a.INDEX15 = b.INDEX15 and  a.ACTION = b.ACTION end
SELECT 1 as Tag,NULL as Parent,
rtrim(eConnect.ACTION) as [eConnect!1!ACTION],rtrim(eConnect.DOCTYPE) as [eConnect!1!Requester_DOCTYPE],
rtrim(eConnect.DBNAME) as [eConnect!1!DBNAME],
rtrim(eConnect.TABLENAME) as [eConnect!1!TABLENAME],
eConnect.DATE1 as [eConnect!1!DATE1],
rtrim(eConnect.INDEX1) as [eConnect!1!PAPROJNUMBER],
rtrim(eConnect.INDEX2) as [eConnect!1!EMPLOYID],
NULL as [Proj_Access_List!2!PAPROJNUMBER!element],
NULL as [Proj_Access_List!2!EMPLOYID!element],
NULL as [Proj_Access_List!2!PACONTNUMBER!element],
NULL as [Proj_Access_List!2!ContractEntry!element],
NULL as [Proj_Access_List!2!ContractInquire!element],
NULL as [Proj_Access_List!2!ContractReport!element],
NULL as [Proj_Access_List!2!ContractReview!element],
NULL as [Proj_Access_List!2!ProjectEntry!element],
NULL as [Proj_Access_List!2!ProjectInquire!element],
NULL as [Proj_Access_List!2!ProjectReport!element],
NULL as [Proj_Access_List!2!ProjectReview!element],
NULL as [Proj_Access_List!2!ALEntry!element],
NULL as [Proj_Access_List!2!ALInquire!element],
NULL as [Proj_Access_List!2!ALReport!element],
NULL as [Proj_Access_List!2!ALReview!element],
NULL as [Proj_Access_List!2!EEEntry!element],
NULL as [Proj_Access_List!2!EEInquire!element],
NULL as [Proj_Access_List!2!EEReport!element],
NULL as [Proj_Access_List!2!EEReview!element],
NULL as [Proj_Access_List!2!ELEntry!element],
NULL as [Proj_Access_List!2!ELInquire!element],
NULL as [Proj_Access_List!2!ELReport!element],
NULL as [Proj_Access_List!2!ELReview!element],
NULL as [Proj_Access_List!2!FFEntry!element],
NULL as [Proj_Access_List!2!FFInquire!element],
NULL as [Proj_Access_List!2!FFReport!element],
NULL as [Proj_Access_List!2!FFReview!element],
NULL as [Proj_Access_List!2!POEntry!element],
NULL as [Proj_Access_List!2!POInquire!element],
NULL as [Proj_Access_List!2!POReport!element],
NULL as [Proj_Access_List!2!RQEntry!element],
NULL as [Proj_Access_List!2!RQInquire!element],
NULL as [Proj_Access_List!2!RQReport!element],
NULL as [Proj_Access_List!2!RQReview!element],
NULL as [Proj_Access_List!2!TSEntry!element],
NULL as [Proj_Access_List!2!TSInquire!element],
NULL as [Proj_Access_List!2!TSReport!element],
NULL as [Proj_Access_List!2!TSReview!element],
NULL as [Proj_Access_List!2!VIEntry!element],
NULL as [Proj_Access_List!2!VIInquire!element],
NULL as [Proj_Access_List!2!VIReport!element],
NULL as [Proj_Access_List!2!VIReview!element],
NULL as [Employee_Detail!3!EMPLOYID!element],
NULL as [Employee_Detail!3!EMPLCLAS!element],
NULL as [Employee_Detail!3!INACTIVE!element],
NULL as [Employee_Detail!3!LASTNAME!element],
NULL as [Employee_Detail!3!FRSTNAME!element],
NULL as [Employee_Detail!3!MIDLNAME!element],
NULL as [Employee_Detail!3!ADRSCODE!element],
NULL as [Employee_Detail!3!SOCSCNUM!element],
NULL as [Employee_Detail!3!BRTHDATE!element],
NULL as [Employee_Detail!3!GENDER!element],
NULL as [Employee_Detail!3!ETHNORGN!element],
NULL as [Employee_Detail!3!Calc_Min_Wage_Bal!element],
NULL as [Employee_Detail!3!DIVISIONCODE_I!element],
NULL as [Employee_Detail!3!DEPRTMNT!element],
NULL as [Employee_Detail!3!JOBTITLE!element],
NULL as [Employee_Detail!3!SUPERVISORCODE_I!element],
NULL as [Employee_Detail!3!LOCATNID!element],
NULL as [Employee_Detail!3!WCACFPAY!element],
NULL as [Employee_Detail!3!ACTINDX!element],
NULL as [Employee_Detail!3!WKHRPRYR!element],
NULL as [Employee_Detail!3!STRTDATE!element],
NULL as [Employee_Detail!3!DEMPINAC!element],
NULL as [Employee_Detail!3!RSNEMPIN!element],
NULL as [Employee_Detail!3!MINETPAY!element],
NULL as [Employee_Detail!3!SUTASTAT!element],
NULL as [Employee_Detail!3!WRKRCOMP!element],
NULL as [Employee_Detail!3!ATACRVAC!element],
NULL as [Employee_Detail!3!VACCRAMT!element],
NULL as [Employee_Detail!3!VACCRMTH!element],
NULL as [Employee_Detail!3!VACAPRYR!element],
NULL as [Employee_Detail!3!VACAVLBL!element],
NULL as [Employee_Detail!3!WRNVCNFLSBLWZR!element],
NULL as [Employee_Detail!3!ATACRSTM!element],
NULL as [Employee_Detail!3!STMACMTH!element],
NULL as [Employee_Detail!3!SKTMACAM!element],
NULL as [Employee_Detail!3!SIKTIMAV!element],
NULL as [Employee_Detail!3!SKTMHPYR!element],
NULL as [Employee_Detail!3!WRNSTFLSBLWZR!element],
NULL as [Employee_Detail!3!USERDEF1!element],
NULL as [Employee_Detail!3!USERDEF2!element],
NULL as [Employee_Detail!3!EMPLOYMENTTYPE!element],
NULL as [Employee_Detail!3!MARITALSTATUS!element],
NULL as [Employee_Detail!3!BENADJDATE!element],
NULL as [Employee_Detail!3!LASTDAYWORKED_I!element],
NULL as [Employee_Detail!3!BIRTHDAY!element],
NULL as [Employee_Detail!3!BIRTHMONTH!element],
NULL as [Employee_Detail!3!SPOUSE!element],
NULL as [Employee_Detail!3!SPOUSESSN!element],
NULL as [Employee_Detail!3!NICKNAME!element],
NULL as [Employee_Detail!3!ALTERNATENAME!element],
NULL as [Employee_Detail!3!HRSTATUS!element],
NULL as [Employee_Detail!3!DATEOFLASTREVIEW_I!element],
NULL as [Employee_Detail!3!DATEOFNEXTREVIEW_I!element],
NULL as [Employee_Detail!3!BENEFITEXPIRE_I!element],
NULL as [Employee_Detail!3!HANDICAPPED!element],
NULL as [Employee_Detail!3!VETERAN!element],
NULL as [Employee_Detail!3!VIETNAMVETERAN!element],
NULL as [Employee_Detail!3!DISABLEDVETERAN!element],
NULL as [Employee_Detail!3!UNIONEMPLOYEE!element],
NULL as [Employee_Detail!3!SMOKER_I!element],
NULL as [Employee_Detail!3!CITIZEN!element],
NULL as [Employee_Detail!3!VERIFIED!element],
NULL as [Employee_Detail!3!I9RENEW!element],
NULL as [Employee_Detail!3!Primary_Pay_Record!element],
NULL as [Employee_Detail!3!CHANGEBY_I!element],
NULL as [Employee_Detail!3!CHANGEDATE_I!element],
NULL as [Employee_Detail!3!NOTEINDX!element],
NULL as [Employee_Detail!3!NOTEINDX2!element],
NULL as [Employee_Detail!3!UNIONCD!element],
NULL as [Employee_Detail!3!RATECLSS!element],
NULL as [Employee_Detail!3!FEDCLSSCD!element],
NULL as [Employee_Detail!3!OTHERVET!element],
NULL as [Address!4!EMPLOYID!element],
NULL as [Address!4!ADRSCODE!element],
NULL as [Address!4!ADDRESS1!element],
NULL as [Address!4!ADDRESS2!element],
NULL as [Address!4!ADDRESS3!element],
NULL as [Address!4!CITY!element],
NULL as [Address!4!STATE!element],
NULL as [Address!4!ZIPCODE!element],
NULL as [Address!4!COUNTY!element],
NULL as [Address!4!COUNTRY!element],
NULL as [Address!4!PHONE1!element],
NULL as [Address!4!PHONE2!element],
NULL as [Address!4!PHONE3!element],
NULL as [Address!4!FAX!element],
NULL as [Address!4!Foreign_Address!element],
NULL as [Address!4!Foreign_StateProvince!element],
NULL as [Address!4!Foreign_Postal_Code!element],
NULL as [Address!4!CCode!element] FROM [#eConnect_Out] [eConnect] (nolock) 
 UNION ALL Select 2,1,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
eConnect.INDEX2,
LTRIM(RTRIM([Proj_Access_List].PAPROJNUMBER)),
LTRIM(RTRIM([Proj_Access_List].EMPLOYID)),
RTRIM([Proj_Access_List].PACONTNUMBER),RTRIM([Proj_Access_List].ContractEntry),RTRIM([Proj_Access_List].ContractInquire),RTRIM([Proj_Access_List].ContractReport),RTRIM([Proj_Access_List].ContractReview),RTRIM([Proj_Access_List].ProjectEntry),RTRIM([Proj_Access_List].ProjectInquire),RTRIM([Proj_Access_List].ProjectReport),RTRIM([Proj_Access_List].ProjectReview),RTRIM([Proj_Access_List].ALEntry),RTRIM([Proj_Access_List].ALInquire),RTRIM([Proj_Access_List].ALReport),RTRIM([Proj_Access_List].ALReview),RTRIM([Proj_Access_List].EEEntry),RTRIM([Proj_Access_List].EEInquire),RTRIM([Proj_Access_List].EEReport),RTRIM([Proj_Access_List].EEReview),RTRIM([Proj_Access_List].ELEntry),RTRIM([Proj_Access_List].ELInquire),RTRIM([Proj_Access_List].ELReport),RTRIM([Proj_Access_List].ELReview),RTRIM([Proj_Access_List].FFEntry),RTRIM([Proj_Access_List].FFInquire),RTRIM([Proj_Access_List].FFReport),RTRIM([Proj_Access_List].FFReview),RTRIM([Proj_Access_List].POEntry),RTRIM([Proj_Access_List].POInquire),RTRIM([Proj_Access_List].POReport),RTRIM([Proj_Access_List].RQEntry),RTRIM([Proj_Access_List].RQInquire),RTRIM([Proj_Access_List].RQReport),RTRIM([Proj_Access_List].RQReview),RTRIM([Proj_Access_List].TSEntry),RTRIM([Proj_Access_List].TSInquire),RTRIM([Proj_Access_List].TSReport),RTRIM([Proj_Access_List].TSReview),RTRIM([Proj_Access_List].VIEntry),RTRIM([Proj_Access_List].VIInquire),RTRIM([Proj_Access_List].VIReport),RTRIM([Proj_Access_List].VIReview),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA01408] [Proj_Access_List] (nolock) on [Proj_Access_List].PAPROJNUMBER = eConnect.INDEX1 and [Proj_Access_List].EMPLOYID = eConnect.INDEX2 UNION ALL Select 3,2,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
eConnect.INDEX2,
LTRIM(RTRIM(Proj_Access_List.PAPROJNUMBER)),
LTRIM(RTRIM(Proj_Access_List.EMPLOYID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([Employee_Detail].EMPLOYID)),
RTRIM([Employee_Detail].EMPLCLAS),RTRIM([Employee_Detail].INACTIVE),RTRIM([Employee_Detail].LASTNAME),RTRIM([Employee_Detail].FRSTNAME),RTRIM([Employee_Detail].MIDLNAME),RTRIM([Employee_Detail].ADRSCODE),RTRIM([Employee_Detail].SOCSCNUM),[Employee_Detail].BRTHDATE,RTRIM([Employee_Detail].GENDER),RTRIM([Employee_Detail].ETHNORGN),RTRIM([Employee_Detail].Calc_Min_Wage_Bal),RTRIM([Employee_Detail].DIVISIONCODE_I),RTRIM([Employee_Detail].DEPRTMNT),RTRIM([Employee_Detail].JOBTITLE),RTRIM([Employee_Detail].SUPERVISORCODE_I),RTRIM([Employee_Detail].LOCATNID),RTRIM([Employee_Detail].WCACFPAY),RTRIM([Employee_Detail].ACTINDX),RTRIM([Employee_Detail].WKHRPRYR),[Employee_Detail].STRTDATE,[Employee_Detail].DEMPINAC,RTRIM([Employee_Detail].RSNEMPIN),RTRIM([Employee_Detail].MINETPAY),RTRIM([Employee_Detail].SUTASTAT),RTRIM([Employee_Detail].WRKRCOMP),RTRIM([Employee_Detail].ATACRVAC),RTRIM([Employee_Detail].VACCRAMT),RTRIM([Employee_Detail].VACCRMTH),RTRIM([Employee_Detail].VACAPRYR),RTRIM([Employee_Detail].VACAVLBL),RTRIM([Employee_Detail].WRNVCNFLSBLWZR),RTRIM([Employee_Detail].ATACRSTM),RTRIM([Employee_Detail].STMACMTH),RTRIM([Employee_Detail].SKTMACAM),RTRIM([Employee_Detail].SIKTIMAV),RTRIM([Employee_Detail].SKTMHPYR),RTRIM([Employee_Detail].WRNSTFLSBLWZR),RTRIM([Employee_Detail].USERDEF1),RTRIM([Employee_Detail].USERDEF2),RTRIM([Employee_Detail].EMPLOYMENTTYPE),RTRIM([Employee_Detail].MARITALSTATUS),[Employee_Detail].BENADJDATE,[Employee_Detail].LASTDAYWORKED_I,RTRIM([Employee_Detail].BIRTHDAY),RTRIM([Employee_Detail].BIRTHMONTH),RTRIM([Employee_Detail].SPOUSE),RTRIM([Employee_Detail].SPOUSESSN),RTRIM([Employee_Detail].NICKNAME),RTRIM([Employee_Detail].ALTERNATENAME),RTRIM([Employee_Detail].HRSTATUS),[Employee_Detail].DATEOFLASTREVIEW_I,[Employee_Detail].DATEOFNEXTREVIEW_I,[Employee_Detail].BENEFITEXPIRE_I,RTRIM([Employee_Detail].HANDICAPPED),RTRIM([Employee_Detail].VETERAN),RTRIM([Employee_Detail].VIETNAMVETERAN),RTRIM([Employee_Detail].DISABLEDVETERAN),RTRIM([Employee_Detail].UNIONEMPLOYEE),RTRIM([Employee_Detail].SMOKER_I),RTRIM([Employee_Detail].CITIZEN),RTRIM([Employee_Detail].VERIFIED),[Employee_Detail].I9RENEW,RTRIM([Employee_Detail].Primary_Pay_Record),RTRIM([Employee_Detail].CHANGEBY_I),[Employee_Detail].CHANGEDATE_I,RTRIM([Employee_Detail].NOTEINDX),RTRIM([Employee_Detail].NOTEINDX2),RTRIM([Employee_Detail].UNIONCD),RTRIM([Employee_Detail].RATECLSS),RTRIM([Employee_Detail].FEDCLSSCD),RTRIM([Employee_Detail].OTHERVET),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA01408] [Proj_Access_List] (nolock) on [Proj_Access_List].PAPROJNUMBER = eConnect.INDEX1 and [Proj_Access_List].EMPLOYID = eConnect.INDEX2 left outer join [UPR00100] [Employee_Detail] (nolock) on Employee_Detail.EMPLOYID = Proj_Access_List.EMPLOYID UNION ALL Select 4,3,eConnect.ACTION,eConnect.DOCTYPE,
eConnect.DBNAME,
eConnect.TABLENAME,
eConnect.DATE1,
eConnect.INDEX1,
eConnect.INDEX2,
LTRIM(RTRIM(Proj_Access_List.PAPROJNUMBER)),
LTRIM(RTRIM(Proj_Access_List.EMPLOYID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM(Employee_Detail.EMPLOYID)),
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,LTRIM(RTRIM([Address].EMPLOYID)),
LTRIM(RTRIM([Address].ADRSCODE)),
RTRIM([Address].ADDRESS1),RTRIM([Address].ADDRESS2),RTRIM([Address].ADDRESS3),RTRIM([Address].CITY),RTRIM([Address].STATE),RTRIM([Address].ZIPCODE),RTRIM([Address].COUNTY),RTRIM([Address].COUNTRY),RTRIM([Address].PHONE1),RTRIM([Address].PHONE2),RTRIM([Address].PHONE3),RTRIM([Address].FAX),RTRIM([Address].Foreign_Address),RTRIM([Address].Foreign_StateProvince),RTRIM([Address].Foreign_Postal_Code),RTRIM([Address].CCode) FROM [#eConnect_Out] [eConnect] (nolock) 
 left outer join [PA01408] [Proj_Access_List] (nolock) on [Proj_Access_List].PAPROJNUMBER = eConnect.INDEX1 and [Proj_Access_List].EMPLOYID = eConnect.INDEX2 left outer join [UPR00100] [Employee_Detail] (nolock) on Employee_Detail.EMPLOYID = Proj_Access_List.EMPLOYID left outer join [UPR00102] [Address] (nolock) on Address.EMPLOYID = Employee_Detail.EMPLOYID Order by  [eConnect!1!PAPROJNUMBER],  [eConnect!1!EMPLOYID],  [Proj_Access_List!2!PAPROJNUMBER!element], [Proj_Access_List!2!EMPLOYID!element], [Employee_Detail!3!EMPLOYID!element],Tag,Parent FOR XML EXPLICIT, BINARY BASE64
GO
GRANT EXECUTE ON  [dbo].[taRequesterProject_Acct_Project_Access2] TO [DYNGRP]
GO
