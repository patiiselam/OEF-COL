CREATE TABLE [dbo].[nsaIF02666](
	[CUSTNMBR] [char](15) NOT NULL,
	[nsaIFNit] [char](15) NOT NULL,
	[nsaIF_CV] [smallint] NOT NULL,
	[CUSTNAME] [char](65) NOT NULL,
	[nsaIF_Type_Nit] [char](3) NOT NULL,
	[nsaIF_Site_Code] [char](5) NOT NULL,
	[Fsurname] [char](65) NOT NULL,
	[Ssurname] [char](65) NOT NULL,
	[Fname] [char](65) NOT NULL,
	[Oname] [char](65) NOT NULL,
	[Rsocial] [char](65) NOT NULL,
	[CCode] [char](7) NOT NULL,
	[DEX_ROW_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PKnsaIF02666] PRIMARY KEY CLUSTERED 
(
	[CUSTNMBR] ASC,
	[nsaIF_Type_Nit] ASC,
	[nsaIFNit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
