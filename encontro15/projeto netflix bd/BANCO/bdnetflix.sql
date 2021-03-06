/****** Object:  Table [dbo].[devedor]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devedor](
	[devedorid] [int] IDENTITY(1,1) NOT NULL,
	[inadimplente] [bit] NOT NULL,
	[usuarioid] [int] NOT NULL,
 CONSTRAINT [PK_devedor] PRIMARY KEY CLUSTERED 
(
	[devedorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filmes]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filmes](
	[filmesid] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](250) NOT NULL,
 CONSTRAINT [PK_filmes] PRIMARY KEY CLUSTERED 
(
	[filmesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[loginid] [int] IDENTITY(1,1) NOT NULL,
	[dataehora] [date] NOT NULL,
	[usuarioid] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[loginid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pageview]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pageview](
	[pageviewid] [int] IDENTITY(1,1) NOT NULL,
	[dataehora] [date] NOT NULL,
	[usuarioid] [int] NOT NULL,
	[filmesid] [int] NULL,
	[seriesid] [int] NULL,
 CONSTRAINT [PK_pageview] PRIMARY KEY CLUSTERED 
(
	[pageviewid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[series]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[series](
	[seriesid] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](250) NOT NULL,
 CONSTRAINT [PK_series] PRIMARY KEY CLUSTERED 
(
	[seriesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 05/07/2021 02:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[usuariosid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](250) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[datacadastro] [date] NOT NULL,
	[datacancelamento] [date] NULL,
	[situacao] [bit] NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[usuariosid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[filmes] ON 

INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (1, N'Rambo V')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (2, N'Parque dos dinossauros')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (3, N'Druk: Mais uma rodada')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (4, N'Meu Pai Florian Zeller')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (5, N'Judas o Messias Negro')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (6, N'Bela Vingança')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (7, N'Em busca da felicidade')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (8, N'Normaland')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (9, N'A escavação')
INSERT [dbo].[filmes] ([filmesid], [titulo]) VALUES (10, N'O tigre branco')
SET IDENTITY_INSERT [dbo].[filmes] OFF
GO
SET IDENTITY_INSERT [dbo].[series] ON 

INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (1, N'O Gambito da Rainha')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (2, N'A Maldição da Mansão')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (3, N'Mistérios sem Solução')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (4, N'Sangue e Água')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (5, N'A Máfia dos Tigres')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (6, N'Nada Ortodoxa')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (7, N'Outlander')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (8, N'Vikings')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (9, N'O atirador')
INSERT [dbo].[series] ([seriesid], [titulo]) VALUES (10, N'Good Girls')
SET IDENTITY_INSERT [dbo].[series] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (1, N'Silvio Dias', N'sdias@gmail.com', CAST(N'2015-09-01' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (2, N'Jeferson Amorim', N'jamorim@globo.com', CAST(N'2020-02-09' AS Date), CAST(N'2021-07-03' AS Date), 0)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (3, N'Camila Fontes', N'cfontes@uol.com.br', CAST(N'2021-03-03' AS Date), CAST(N'2021-07-01' AS Date), 0)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (16, N'Rafel Fernandes', N'rafafe@r7.com', CAST(N'2021-04-06' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (17, N'Roberto Silveira', N'silveira@gmail.com', CAST(N'2021-06-05' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (18, N'Pamela Firmino', N'pamela@gmail.com', CAST(N'2021-06-06' AS Date), CAST(N'2021-07-02' AS Date), 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (19, N'Marco Antonio', N'mantonio@ig.com.br', CAST(N'2021-07-02' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (20, N'Amanda Vieira', N'amandav@ig.com.br', CAST(N'2021-03-07' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (21, N'Ana Paula', N'anap@gmail.com', CAST(N'2021-04-07' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (22, N'Anderson Souza', N'anderson@ig.com.br', CAST(N'2021-07-05' AS Date), NULL, 1)
INSERT [dbo].[usuarios] ([usuariosid], [nome], [email], [datacadastro], [datacancelamento], [situacao]) VALUES (23, N'Jessica Gomes', N'jessica@uol.com.br', CAST(N'2021-07-09' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[devedor]  WITH CHECK ADD  CONSTRAINT [FK_devedor_usuarios] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[usuarios] ([usuariosid])
GO
ALTER TABLE [dbo].[devedor] CHECK CONSTRAINT [FK_devedor_usuarios]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FK_login_usuarios] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[usuarios] ([usuariosid])
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FK_login_usuarios]
GO
ALTER TABLE [dbo].[pageview]  WITH CHECK ADD  CONSTRAINT [FK_pageview_filmes] FOREIGN KEY([filmesid])
REFERENCES [dbo].[filmes] ([filmesid])
GO
ALTER TABLE [dbo].[pageview] CHECK CONSTRAINT [FK_pageview_filmes]
GO
ALTER TABLE [dbo].[pageview]  WITH CHECK ADD  CONSTRAINT [FK_pageview_series] FOREIGN KEY([seriesid])
REFERENCES [dbo].[series] ([seriesid])
GO
ALTER TABLE [dbo].[pageview] CHECK CONSTRAINT [FK_pageview_series]
GO
ALTER TABLE [dbo].[pageview]  WITH CHECK ADD  CONSTRAINT [FK_pageview_usuarios] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[usuarios] ([usuariosid])
GO
ALTER TABLE [dbo].[pageview] CHECK CONSTRAINT [FK_pageview_usuarios]
GO
