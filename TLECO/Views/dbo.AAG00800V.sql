SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create view [dbo].[AAG00800V](aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr, DEX_ROW_ID)  as  select convert(int, a.ACTINDX), convert(smallint, 1), convert(smallint, 0), convert(char(130), ACTNUMST), convert(char(66), ACTDESCR), a.DEX_ROW_ID from GL00105 a join GL00100 b on a.ACTINDX = b.ACTINDX  where b.ACCTTYPE < 3  union all  select DEX_ROW_ID, 2, 0, CUSTNMBR, CUSTNAME, DEX_ROW_ID from RM00101  union all  select DEX_ROW_ID, 3, 0, EMPLOYID, rtrim(LASTNAME) + ', ' + rtrim(FRSTNAME) + ' ' +  rtrim(MIDLNAME), DEX_ROW_ID from UPR00100  union all  select DEX_ROW_ID, 4, 0, ITEMNMBR, ITEMDESC, DEX_ROW_ID from IV00101  union all  select DEX_ROW_ID, 5, 0, LOCNCODE, LOCNDSCR, DEX_ROW_ID from IV40700  union all  select DEX_ROW_ID, 6, 0, VENDORID, VENDNAME, DEX_ROW_ID from PM00200  union all  select ASSETINDEX,7,0,RTRIM(ASSETID)+'-'+convert(varchar(15),ASSETIDSUF),ASSETDESC,DEX_ROW_ID from FA00100  union all  select BOOKINDX,8,0,BOOKID,BOOKDESC,DEX_ROW_ID from FA40200  union all  select aaTrxDimCodeID, 9, aaTrxDimID, aaTrxDimCode, aaTrxDimCodeDescr, DEX_ROW_ID from AAG00401     
GO
GRANT SELECT ON  [dbo].[AAG00800V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00800V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00800V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00800V] TO [DYNGRP]
GO
