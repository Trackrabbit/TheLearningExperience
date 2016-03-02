SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcCheckItemOnDocument]  @sItem char(30),  @error smallint output  AS  set @error = 0  if exists(select * from SVC00203 where ITEMNMBR = @sItem)  select @error = 1 else if exists(select * from SVC00601 where ITEMNMBR = @sItem)  select @error = 2 else if exists(select * from SVC00701 where ITEMNMBR = @sItem)  select @error = 3 else if exists(select * from SVC05200 where ITEMNMBR = @sItem)  select @error = 4 else if exists(select * from SVC05601 where ITEMNMBR = @sItem)  select @error = 5 else if exists(select * from SVC06101 where ITEMNMBR = @sItem)  select @error = 6 else if exists(select * from SVC00300 where ITEMNMBR = @sItem)  select @error = 7 else if exists(select * from SVC00651 where ITEMNMBR = @sItem)  select @error = 8 return    
GO
GRANT EXECUTE ON  [dbo].[svcCheckItemOnDocument] TO [DYNGRP]
GO
