SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smCreateViews]  as  exec ('if exists (select * from dbo.sysobjects  where id = Object_id(''.GL11110'') and type = ''V'')  begin drop view .GL11110 end') exec ('create view dbo.GL11110 as  select a.YEAR1,a.PERIODID,a.Ledger_ID,  a.PERDBLNC,a.CRDTAMNT,a.DEBITAMT,b.* from GL10110 a,  GL00100 b WHERE a.ACTINDX = b.ACTINDX')  exec ('grant insert,update,delete,select  on GL11110 to DYNGRP')  exec ('if exists (select * from dbo.sysobjects  where id = Object_id(''.GL11111'') and type = ''V'')  begin drop view .GL11111 end') exec ('create view dbo.GL11111 as  select a.YEAR1,a.PERIODID,a.Ledger_ID,  a.PERDBLNC,a.CRDTAMNT,a.DEBITAMT,b.* from GL10111 a,  GL00100 b WHERE a.ACTINDX = b.ACTINDX')  exec ('grant insert,update,delete,select  on GL11111 to DYNGRP')  exec ('if exists (select * from dbo.sysobjects  where id = Object_id(''.GL01201'') and type = ''V'')  begin drop view .GL01201 end') exec ('create view dbo.GL01201 as  select a.BUDGETID, a.PERIODID,   a.BUDGETAMT, b.* from     GL00201 a,  GL00100 b WHERE a.ACTINDX = b.ACTINDX') exec ('grant insert,update,delete,select on GL01201 to DYNGRP')  return    
GO
GRANT EXECUTE ON  [dbo].[smCreateViews] TO [DYNGRP]
GO
