SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00105F_2] (@DOCNUMBR_RS char(21), @ORD_RS int, @STRTDSCR_RS char(51), @DOCNUMBR_RE char(21), @ORD_RE int, @STRTDSCR_RE char(51)) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 ORDER BY DOCNUMBR ASC, ORD ASC, STRTDSCR ASC, DEX_ROW_ID ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 WHERE DOCNUMBR = @DOCNUMBR_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE AND STRTDSCR BETWEEN @STRTDSCR_RS AND @STRTDSCR_RE ORDER BY DOCNUMBR ASC, ORD ASC, STRTDSCR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE AND STRTDSCR BETWEEN @STRTDSCR_RS AND @STRTDSCR_RE ORDER BY DOCNUMBR ASC, ORD ASC, STRTDSCR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00105F_2] TO [DYNGRP]
GO
