SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smCheckbookModify1]  @I_charStartCheckbook 	char(30),  @I_charEndCheckbook 	char(30),  @O_iErrorState		int = NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare @tTransaction		tinyint, @tLoop			tinyint, @iStatus		int, @CHEKBKID  		char(255), @cStartCheckbook	char(50), @cEndCheckbook		char(50) exec @iStatus = smFormatStringsForExecs @I_vInputString  = @I_charStartCheckbook, @O_cOutputString = @cStartCheckbook output, @O_iErrorState	 = @O_iErrorState output if @iStatus <> 0 or @O_iErrorState <> 0 begin set @O_iErrorState = 90 return end exec @iStatus = smFormatStringsForExecs @I_vInputString  = @I_charEndCheckbook, @O_cOutputString = @cEndCheckbook output, @O_iErrorState	 = @O_iErrorState output if @iStatus <> 0 or @O_iErrorState <> 0 begin set @O_iErrorState = 91 return end select 	@O_iErrorState 	 = 0 if @@trancount = 0 begin select @tTransaction = 1 begin transaction end while ( @tLoop is NULL ) begin select @tLoop = 1 if	@I_charStartCheckbook	is NULL or @I_charEndCheckbook	is NULL  begin select @O_iErrorState = 1  break end  if exists (select * from sysobjects where id = object_id('dbo.taCustomerInsert')) alter table RM00101 disable trigger taCustomerInsert if @@error <> 0  begin select @O_iErrorState = 2  break end if exists (select * from sysobjects where id = object_id('dbo.taCustomerAddressInsert')) alter table RM00102 disable trigger taCustomerAddressInsert if @@error <> 0 begin select @O_iErrorState = 3  break end if exists (select * from sysobjects where id = object_id('dbo.taVendorInsert')) alter table PM00200 disable trigger taVendorInsert if @@error <> 0 begin select @O_iErrorState = 4  break end if exists (select * from sysobjects where id = object_id('dbo.taVendorAddressInsert')) alter table PM00300 disable trigger taVendorAddressInsert if @@error <> 0 begin select @O_iErrorState = 5  break end declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CHEKBKID =' + rtrim(@cEndCheckbook) + ' where CHEKBKID = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CHEKBKID'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 6  break end FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break update GL10001 set ORMSTRID = @I_charEndCheckbook where ORMSTRID = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 7  break end update GL20000 set ORMSTRID = @I_charEndCheckbook where ORMSTRID = @I_charStartCheckbook and SERIES = 2 if @@error <> 0  begin select @O_iErrorState = 8  break end update GL30000 set ORMSTRID = @I_charEndCheckbook where ORMSTRID = @I_charStartCheckbook and SERIES = 2 if @@error <> 0  begin select @O_iErrorState = 9  break end update PJOURNAL set ORMSTRID = @I_charEndCheckbook where ORMSTRID = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 10  break end update SY03100 set CKBKNUM1 = @I_charEndCheckbook where CKBKNUM1 = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 11  break end update SY03100 set CKBKNUM2 = @I_charEndCheckbook where CKBKNUM2 = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 12  break end update UPR40200 set COMPCHID = @I_charEndCheckbook where COMPCHID = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 88  break end update UPR40200 set MLCHBKID = @I_charEndCheckbook where MLCHBKID = @I_charStartCheckbook if @@error <> 0  begin select @O_iErrorState = 89  break end declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set MSCSCHID =' + rtrim(@cEndCheckbook) + ' where MSCSCHID = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'MSCSCHID'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 13  break end FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CBKIDCSH =' + rtrim(@cEndCheckbook) + ' where CBKIDCSH = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CBKIDCSH'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 14  break end FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CBKIDCHK =' + rtrim(@cEndCheckbook) + ' where CBKIDCHK = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CBKIDCHK'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 15  break end FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CAMCBKID =' + rtrim(@cEndCheckbook) + ' where CAMCBKID = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CAMCBKID'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 12  break end  FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CMCHKBKID =' + rtrim(@cEndCheckbook) + ' where CMCHKBKID = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CMCHKBKID'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 16  break end FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break declare ta_CMCursor insensitive CURSOR for select 'update '+o.name+' set CMFRMCHKBKID =' + rtrim(@cEndCheckbook) + ' where CMFRMCHKBKID = ' + rtrim(@cStartCheckbook) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'CMFRMCHKBKID'  order by o.name set nocount on OPEN ta_CMCursor FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  WHILE (@@FETCH_STATUS <> -1) begin exec (@CHEKBKID) if @@error <> 0  begin select @O_iErrorState = 17  break end  FETCH NEXT FROM ta_CMCursor INTO @CHEKBKID  end DEALLOCATE ta_CMCursor if @O_iErrorState <> 0 break end  if exists (select * from sysobjects where id = object_id('dbo.taCustomerInsert')) alter table RM00101 enable trigger taCustomerInsert if @@error <> 0 begin select @O_iErrorState = 18  end if exists (select * from sysobjects where id = object_id('dbo.taCustomerAddressInsert')) alter table RM00102 enable trigger taCustomerAddressInsert if @@error <> 0 begin select @O_iErrorState = 19  end if exists (select * from sysobjects where id = object_id('dbo.taVendorInsert')) alter table PM00200 enable trigger taVendorInsert if @@error <> 0 begin select @O_iErrorState = 20  end if exists (select * from sysobjects where id = object_id('dbo.taVendorAddressInsert')) alter table PM00300 enable trigger taVendorAddressInsert if @@error <> 0 begin select @O_iErrorState = 21  end if @O_iErrorState <> 0 begin if @tTransaction = 1 rollback transaction end else if @tTransaction = 1 begin commit transaction end return 
GO
GRANT EXECUTE ON  [dbo].[smCheckbookModify1] TO [DYNGRP]
GO
