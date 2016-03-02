SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[TACallCustomerCombine] @I_charStartCustomer char(31),  @I_charEndCustomer char(31),  @O_iErrorState int = NULL output with encryption as set transaction isolation level read uncommitted set nocount on declare  @iStatus int, @iError int,  @tTransaction tinyint, @tLoop tinyint select @O_iErrorState = 0 if @@trancount = 0    begin select @tTransaction = 1 begin transaction end while ( @tLoop is NULL ) begin select @tLoop = 1 if exists (select * from sysobjects where id = object_id('dbo.taCustomerInsert')) alter table RM00101 disable trigger taCustomerInsert if @@error <> 0  begin select @O_iErrorState = 6  break end  if exists (select * from sysobjects where id = object_id('dbo.taCustomerAddressInsert')) alter table RM00102 disable trigger taCustomerAddressInsert if @@error <> 0  begin select @O_iErrorState = 7  break end  if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_Cust_Ext_U')) alter table RM00102 disable trigger tr_SVC_Cust_Ext_U if @@error <> 0  begin select @O_iErrorState = 10  break end if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_RM00102_D')) alter table RM00102 disable trigger tr_SVC_RM00102_D if @@error <> 0  begin select @O_iErrorState = 41  break end if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_SVC00601_IUD')) alter table SVC00601 disable trigger tr_SVC_SVC00601_IUD if @@error <> 0  begin select @O_iErrorState = 42  break end if exists (select 1 from sysobjects where name = 'RM_Customer_MSTR_NA') begin ALTER TABLE dbo.RM00101 DROP CONSTRAINT RM_Customer_MSTR_NA  if @@error <> 0  begin select @O_iErrorState = 8	 break end  end if exists (select 1 from sysobjects where name = 'RM_NationalAccounts_MSTR_FKC') begin ALTER TABLE dbo.RM00105  DROP CONSTRAINT RM_NationalAccounts_MSTR_FKC  if @@error <> 0  begin select @O_iErrorState = 9	 break end  end exec @iStatus = smCustomerCombiner1 @I_charStartCustomer, @I_charEndCustomer, @O_iErrorState output select @iError = @@error if @iStatus = 0 and @iError <> 0 select @iStatus = @iError if (@iStatus <> 0) or (@O_iErrorState <> 0) begin select @O_iErrorState = 65 break end end  ALTER TABLE dbo.RM00101 WITH NOCHECK  ADD CONSTRAINT RM_Customer_MSTR_NA CHECK  ((CPRCSTNM <> '' AND BALNCTYP = 0) or  (CPRCSTNM = '' AND BALNCTYP = 1) or  (CPRCSTNM = '' AND BALNCTYP = 0)) if @@error <> 0  begin select @O_iErrorState = 61		 end ALTER TABLE dbo.RM00105 WITH NOCHECK ADD CONSTRAINT RM_NationalAccounts_MSTR_FKC FOREIGN KEY  (CPRCSTNM) REFERENCES dbo.RM00101 (CUSTNMBR) if @@error <> 0  begin select @O_iErrorState = 62		 end if exists (select * from sysobjects where id = object_id('dbo.taCustomerInsert')) alter table RM00101 enable trigger taCustomerInsert if @@error <> 0  begin select @O_iErrorState = 63	 end if exists (select * from sysobjects where id = object_id('dbo.taCustomerAddressInsert')) alter table RM00102 enable trigger taCustomerAddressInsert if @@error <> 0  begin select @O_iErrorState = 64	 end if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_Cust_Ext_U')) alter table RM00102 enable trigger tr_SVC_Cust_Ext_U if @@error <> 0  begin select @O_iErrorState = 11	 end if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_RM00102_D')) alter table RM00102 enable trigger tr_SVC_RM00102_D if @@error <> 0  begin select @O_iErrorState = 43  end if exists (select * from sysobjects where id = object_id('dbo.tr_SVC_SVC00601_IUD')) alter table SVC00601 enable trigger tr_SVC_SVC00601_IUD if @@error <> 0  begin select @O_iErrorState = 44  end if @O_iErrorState <> 0 begin if @tTransaction = 1 rollback transaction end else if @tTransaction = 1 begin commit transaction end return  
GO
GRANT EXECUTE ON  [dbo].[TACallCustomerCombine] TO [DYNGRP]
GO
