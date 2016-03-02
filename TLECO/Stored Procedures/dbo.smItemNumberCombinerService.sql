SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smItemNumberCombinerService]   @I_charStartItem 	char(30), @I_charEndItem 		char(30), @cStartItem 		char(50), @cEndItem 		char(50), @O_iErrorState 		int = NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare @ITEMNMBR char (255) select @O_iErrorState 	 = 0 set nocount on declare ta_INCSCursor insensitive CURSOR for select 'update '+o.name+' set ITEMNMBR =' + rtrim(@cEndItem) + ' where ITEMNMBR = ' + rtrim(@cStartItem) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'ITEMNMBR' and o.name like 'SVC%' and o.name <> 'SVC00102' and o.name <> 'SVC00302' and o.name <> 'SVC00501' and o.name <> 'SVC00502' and o.name <> 'SVC00606' and o.name <> 'SVC00651' and o.name <> 'SVC00654' and o.name <> 'SVC00951' and o.name <> 'SVC00952' and o.name <> 'SVC01000' and o.name <> 'SVC05004' and o.name <> 'SVC06015' order by o.name set nocount on OPEN ta_INCSCursor FETCH NEXT FROM ta_INCSCursor INTO @ITEMNMBR   WHILE (@@FETCH_STATUS <> -1) begin exec (@ITEMNMBR) if @@error <> 0  begin select @O_iErrorState = 1	 break end  FETCH NEXT FROM ta_INCSCursor INTO @ITEMNMBR   end DEALLOCATE ta_INCSCursor update SVC00102 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and TECHID+PROBCDE not in (select TECHID+PROBCDE from SVC00102 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 2	 return end update SVC00302 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and SERLNMBR not in (select SERLNMBR from SVC00302 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 3	 return end update SVC00302 set OLDITEMNBR = @I_charEndItem where OLDITEMNBR = @I_charStartItem and OLDSERNBR not in (select OLDSERNBR from SVC00302 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 4	 return end delete SVC00302 where OLDITEMNBR = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 5	 return end update SVC00310 set From_Item_Number = @I_charEndItem where From_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 27	 return end update SVC00310 set To_Item_Number = @I_charEndItem where To_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 34	 return end update SVC00501 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and cast(MODIFDT as varchar) not in (select cast(MODIFDT as varchar) from SVC00501 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 6	 return end update SVC00606 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and cast(CONSTS as varchar)+CONTNBR not in (select cast(CONSTS as varchar)+CONTNBR from SVC00606 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 8	 return end update SVC00651 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and PRICSHED+ITMCLSCD+CUSTCLAS+CUSTNMBR+OPTTYPE not in (select PRICSHED+ITMCLSCD+CUSTCLAS+CUSTNMBR+OPTTYPE from SVC00651 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 9	 return end update SVC00654 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and PRICSHED+ITMCLSCD+CUSTCLAS+CUSTNMBR not in (select PRICSHED+ITMCLSCD+CUSTCLAS+CUSTNMBR from SVC00654 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 10	 return end update SVC00920 set Hotline_Labor_Item = @I_charEndItem	where Hotline_Labor_Item = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 28	 return end update SVC00920 set LABITMDB = @I_charEndItem where LABITMDB = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 30	 return end update SVC00920 set LABITMOV = @I_charEndItem where LABITMOV = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 31	 return end update SVC00920 set LABITMST = @I_charEndItem where LABITMST = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 32	 return end update SVC00920 set Travel_Labor_Item = @I_charEndItem where Travel_Labor_Item = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 35	 return end update SVC00951 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and not exists (select ITEMNMBR from SVC00951 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 11	 return end update SVC00952 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and LOCNCODE not in (select LOCNCODE from SVC00952 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 12	 return end update SVC01000 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and SCHEDID not in (select SCHEDID from SVC01000 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 13	 return end update SVC05004 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and VENDORID+RTV_Type not in (select VENDORID+RTV_Type from SVC05004 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 14	 return end update SVC06015 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and ROUTEID not in (select ROUTEID from SVC06015 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 15	 return end update SVC00502 set ITEMNMBR = @I_charEndItem where ITEMNMBR = @I_charStartItem and cast(MODIFDT as varchar)+LOCNCODE not in (select cast(MODIFDT as varchar)+LOCNCODE from SVC00502 where ITEMNMBR = @I_charEndItem) if @@error <> 0  begin select @O_iErrorState = 7	 return end CREATE TABLE dbo.#tmpSVC00502 ( QTYONHND numeric(19, 5) NOT NULL , ATYALLOC numeric(19, 5) NOT NULL , MODIFDT datetime NOT NULL, LOCNCODE char (11) NOT NULL) if @@error <> 0  begin select @O_iErrorState = 18	 return end 	 create index AK1#tmpSVC00502 on #tmpSVC00502 (MODIFDT, LOCNCODE) if @@error <> 0  begin select @O_iErrorState = 19	 return end 	 insert #tmpSVC00502 select sum(QTYONHND),sum(ATYALLOC),MODIFDT,LOCNCODE from SVC00502 where ITEMNMBR = @I_charStartItem or ITEMNMBR = @I_charEndItem group by MODIFDT,LOCNCODE if @@error <> 0  begin select @O_iErrorState = 20	 return end  update #tmpSVC00502 set QTYONHND = isnull(QTYONHND,0), ATYALLOC = isnull(ATYALLOC,0) if @@error <> 0  begin select @O_iErrorState = 21	 return end  update a set  a.QTYONHND = b.QTYONHND, a.ATYALLOC = b.ATYALLOC from SVC00502 a, #tmpSVC00502 b where a.ITEMNMBR = @I_charEndItem and a.MODIFDT = b.MODIFDT and a.LOCNCODE = b.LOCNCODE if @@error <> 0  begin select @O_iErrorState = 22	 return end  drop table #tmpSVC00502 update SVC05200 set Replace_Item_Number = @I_charEndItem where Replace_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 33	 return end update SVC05256 set Replace_Item_Number = @I_charEndItem where Replace_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 36	 return end update SVC35200 set Replace_Item_Number = @I_charEndItem where Replace_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 37	 return end update SVC35256 set Replace_Item_Number = @I_charEndItem where Replace_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 38	 return end update SVC05015 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 24	 return end update SVC05115 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 25	 return end update SVC05200 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 39	 return end update SVC05255 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 40	 return end update SVC05601 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 41	 return end update SVC05602 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 42	 return end update SVC05625 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 43	 return end update SVC35200 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 44	 return end update SVC35255 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 45	 return end update SVC35601 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 46	 return end update SVC35602 set Return_Item_Number = @I_charEndItem where Return_Item_Number = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 47	 return end update SVC06100 set IBITEMNUM = @I_charEndItem where IBITEMNUM = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 29	 return end update SVC06100 set IBITEMNUM = @I_charEndItem where IBITEMNUM = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 29	 return end update SVC06100 set OBITEMNUM = @I_charEndItem where OBITEMNUM = @I_charStartItem if @@error <> 0  begin select @O_iErrorState = 33	 return end declare ta_INCSCursor insensitive CURSOR for select 'delete '+o.name+'  where rtrim(ITEMNMBR) =' + rtrim(@cStartItem) from sysobjects o, syscolumns c where	o.id = c.id and o.type = 'U' and c.name = 'ITEMNMBR' and (o.name = 'SVC00102'  or   o.name = 'SVC00302' or   o.name = 'SVC00501' or   o.name = 'SVC00502' or   o.name = 'SVC00606' or   o.name = 'SVC00651' or   o.name = 'SVC00654' or   o.name = 'SVC00951' or   o.name = 'SVC00952' or   o.name = 'SVC01000' or   o.name = 'SVC05004' or   o.name = 'SVC06015') order by o.name set nocount on OPEN ta_INCSCursor FETCH NEXT FROM ta_INCSCursor INTO @ITEMNMBR WHILE (@@FETCH_STATUS <> -1) begin exec (@ITEMNMBR) if @@error <> 0  begin select @O_iErrorState = 17	 break end  FETCH NEXT FROM ta_INCSCursor INTO @ITEMNMBR end DEALLOCATE ta_INCSCursor 
GO
GRANT EXECUTE ON  [dbo].[smItemNumberCombinerService] TO [DYNGRP]
GO
