SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00101N_2] (@BS int, @CRUSRID char(15), @CREATDDT datetime, @CREATETIME datetime, @DEX_ROW_ID int, @CRUSRID_RS char(15), @CREATDDT_RS datetime, @CREATETIME_RS datetime, @CRUSRID_RE char(15), @CREATDDT_RE datetime, @CREATETIME_RE datetime) AS  set nocount on IF @CRUSRID_RS IS NULL BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE ( CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME AND DEX_ROW_ID > @DEX_ROW_ID OR CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME > @CREATETIME OR CRUSRID = @CRUSRID AND CREATDDT > @CREATDDT OR CRUSRID > @CRUSRID ) ORDER BY CRUSRID ASC, CREATDDT ASC, CREATETIME ASC, DEX_ROW_ID ASC END ELSE IF @CRUSRID_RS = @CRUSRID_RE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE CRUSRID = @CRUSRID_RS AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND CREATETIME BETWEEN @CREATETIME_RS AND @CREATETIME_RE AND ( CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME AND DEX_ROW_ID > @DEX_ROW_ID OR CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME > @CREATETIME OR CRUSRID = @CRUSRID AND CREATDDT > @CREATDDT OR CRUSRID > @CRUSRID ) ORDER BY CRUSRID ASC, CREATDDT ASC, CREATETIME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE CRUSRID BETWEEN @CRUSRID_RS AND @CRUSRID_RE AND CREATDDT BETWEEN @CREATDDT_RS AND @CREATDDT_RE AND CREATETIME BETWEEN @CREATETIME_RS AND @CREATETIME_RE AND ( CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME AND DEX_ROW_ID > @DEX_ROW_ID OR CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME > @CREATETIME OR CRUSRID = @CRUSRID AND CREATDDT > @CREATDDT OR CRUSRID > @CRUSRID ) ORDER BY CRUSRID ASC, CREATDDT ASC, CREATETIME ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00101N_2] TO [DYNGRP]
GO
