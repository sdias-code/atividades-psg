/****** Object:  Table [dbo].[armaduras]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[armaduras](
	[armaduraid] [int] IDENTITY(1,1) NOT NULL,
	[armaduradescricao] [varchar](150) NOT NULL,
	[classeid] [int] NOT NULL,
	[armaduracusto] [float] NOT NULL,
 CONSTRAINT [PK_armaduras] PRIMARY KEY CLUSTERED 
(
	[armaduraid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[armas]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[armas](
	[armasid] [int] IDENTITY(1,1) NOT NULL,
	[armadescricao] [varchar](150) NOT NULL,
	[classeid] [int] NOT NULL,
	[armacusto] [float] NOT NULL,
 CONSTRAINT [PK_armas] PRIMARY KEY CLUSTERED 
(
	[armasid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[botas]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[botas](
	[botaid] [int] IDENTITY(1,1) NOT NULL,
	[botadescricao] [varchar](150) NOT NULL,
	[classeid] [int] NOT NULL,
	[botacusto] [float] NOT NULL,
 CONSTRAINT [PK_botas] PRIMARY KEY CLUSTERED 
(
	[botaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[classeid] [int] IDENTITY(1,1) NOT NULL,
	[classe] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED 
(
	[classeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[herois]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[herois](
	[heroisid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[classeid] [int] NOT NULL,
	[skill1] [varchar](350) NOT NULL,
	[skill2] [varchar](350) NOT NULL,
	[skill3] [varchar](350) NOT NULL,
	[ultimate] [varchar](350) NOT NULL,
	[heroicusto] [float] NOT NULL,
 CONSTRAINT [PK_herois] PRIMARY KEY CLUSTERED 
(
	[heroisid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personagens]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personagens](
	[personagensid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[heroisid] [int] NOT NULL,
	[botasid] [int] NOT NULL,
	[armasid] [int] NOT NULL,
	[armadurasid] [int] NOT NULL,
 CONSTRAINT [PK_personagens] PRIMARY KEY CLUSTERED 
(
	[personagensid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/07/2021 18:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[armaduras] ON 

INSERT [dbo].[armaduras] ([armaduraid], [armaduradescricao], [classeid], [armaduracusto]) VALUES (1, N'Armadura de Couro', 1, 220)
INSERT [dbo].[armaduras] ([armaduraid], [armaduradescricao], [classeid], [armaduracusto]) VALUES (2, N'Couraça Antiga', 1, 660)
INSERT [dbo].[armaduras] ([armaduraid], [armaduradescricao], [classeid], [armaduracusto]) VALUES (3, N'Manto Sereno', 2, 550)
INSERT [dbo].[armaduras] ([armaduraid], [armaduradescricao], [classeid], [armaduracusto]) VALUES (4, N'Protetor de Athena', 3, 750)
INSERT [dbo].[armaduras] ([armaduraid], [armaduradescricao], [classeid], [armaduracusto]) VALUES (5, N'Armadura de Lâmina', 4, 820)
SET IDENTITY_INSERT [dbo].[armaduras] OFF
GO
SET IDENTITY_INSERT [dbo].[armas] ON 

INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (1, N'Varinha Mágica', 2, 820)
INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (2, N'Glaive Divina', 2, 970)
INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (3, N'Espada do Caçador', 4, 990)
INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (4, N'Lâmina da Morte', 1, 1200)
INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (5, N'Lâmina do Desespero', 1, 1100)
INSERT [dbo].[armas] ([armasid], [armadescricao], [classeid], [armacusto]) VALUES (6, N'Vento da Natureza', 3, 1500)
SET IDENTITY_INSERT [dbo].[armas] OFF
GO
SET IDENTITY_INSERT [dbo].[botas] ON 

INSERT [dbo].[botas] ([botaid], [botadescricao], [classeid], [botacusto]) VALUES (1, N'NULBotas de GuerreiroL', 1, 250)
INSERT [dbo].[botas] ([botaid], [botadescricao], [classeid], [botacusto]) VALUES (2, N'NULLPés Mágicos', 2, 720)
INSERT [dbo].[botas] ([botaid], [botadescricao], [classeid], [botacusto]) VALUES (3, N'Botas do Mago', 2, 710)
INSERT [dbo].[botas] ([botaid], [botadescricao], [classeid], [botacusto]) VALUES (4, N'Bota Ágil', 4, 890)
INSERT [dbo].[botas] ([botaid], [botadescricao], [classeid], [botacusto]) VALUES (5, N'Botas Arcanas', 3, 690)
SET IDENTITY_INSERT [dbo].[botas] OFF
GO
SET IDENTITY_INSERT [dbo].[classes] ON 

INSERT [dbo].[classes] ([classeid], [classe]) VALUES (1, N'Tank')
INSERT [dbo].[classes] ([classeid], [classe]) VALUES (2, N'Mago')
INSERT [dbo].[classes] ([classeid], [classe]) VALUES (3, N'Suporte')
INSERT [dbo].[classes] ([classeid], [classe]) VALUES (4, N'Atirador')
SET IDENTITY_INSERT [dbo].[classes] OFF
GO
SET IDENTITY_INSERT [dbo].[herois] ON 

INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (1, N'Brody', 4, N'Corrosão do Abismo', N'Impacto do Abismo', N'Golpe Corrosivo', N'Memória Fragmentada', 23000)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (2, N'Alice', 2, N'Linhagem de Sangue', N'Sangue Fluindo', N'Admiração do Sangue', N'Ode de Sangue', 22000)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (3, N'Khaleed', 1, N'Nômade da Areia', N'Furacão do Deserto', N'Proteção de Areia Movediça', N'Tempestade de areia violenta', 14500)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (4, N'Hilda', 1, N'Benção do Deserto', N'Ritual de Combate', N'Arte da Caça', N'Fúria Selvagem', 25000)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (5, N'Mathilda', 3, N'Orientação Ancestral', N'Flor da Alma', N'Vento Orientador', N'Águia Circulante', 18600)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (6, N'Carmilla', 3, N'Pacto Vampírico', N'Flor Carmesim', N'Banho de Sangue', N'Maldição de Sangue', 24300)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (7, N'Estes', 3, N'Imersão ao luar', N'Bênção da deusa', N'Domínio do deus da lua', N'Escritura do elfo lunar', 21400)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (8, N'Bruno', 4, N'Pernas mecha', N'Tiro de vôlei', N'Onda do mundo', N'Equipamento para voar', 19800)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (9, N'Rafaela', 2, N'Cura sagrada', N'Luz da retribuição', N'Santo batismo', N'Penalização de divindade', 26350)
INSERT [dbo].[herois] ([heroisid], [nome], [classeid], [skill1], [skill2], [skill3], [ultimate], [heroicusto]) VALUES (10, N'Odette', 2, N'Ambiente da luz', N'Autoridade aviária', N'Lua nova', N'Canção do cisne', 17900)
SET IDENTITY_INSERT [dbo].[herois] OFF
GO
SET IDENTITY_INSERT [dbo].[personagens] ON 

INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (1, 1, 5, 5, 4, 4)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (2, 1, 2, 3, 1, 3)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (3, 2, 10, 2, 2, 3)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (4, 3, 3, 1, 5, 2)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (5, 4, 1, 4, 3, 5)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (6, 4, 7, 5, 6, 4)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (7, 5, 8, 4, 3, 5)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (8, 5, 1, 4, 3, 5)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (9, 6, 4, 1, 4, 1)
INSERT [dbo].[personagens] ([personagensid], [userid], [heroisid], [botasid], [armasid], [armadurasid]) VALUES (10, 6, 6, 5, 6, 4)
SET IDENTITY_INSERT [dbo].[personagens] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (1, N'Robson Ferreira')
INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (2, N'Carlos Eduardo')
INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (3, N'Camila Neves')
INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (4, N'José Ribeiro')
INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (5, N'Fabio Nascimento')
INSERT [dbo].[usuarios] ([userid], [nome]) VALUES (6, N'Amanda Esteves')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[armaduras]  WITH CHECK ADD  CONSTRAINT [FK_armaduras_classes] FOREIGN KEY([classeid])
REFERENCES [dbo].[classes] ([classeid])
GO
ALTER TABLE [dbo].[armaduras] CHECK CONSTRAINT [FK_armaduras_classes]
GO
ALTER TABLE [dbo].[armas]  WITH CHECK ADD  CONSTRAINT [FK_armas_classes] FOREIGN KEY([classeid])
REFERENCES [dbo].[classes] ([classeid])
GO
ALTER TABLE [dbo].[armas] CHECK CONSTRAINT [FK_armas_classes]
GO
ALTER TABLE [dbo].[botas]  WITH CHECK ADD  CONSTRAINT [FK_botas_classes] FOREIGN KEY([classeid])
REFERENCES [dbo].[classes] ([classeid])
GO
ALTER TABLE [dbo].[botas] CHECK CONSTRAINT [FK_botas_classes]
GO
ALTER TABLE [dbo].[herois]  WITH CHECK ADD  CONSTRAINT [FK_herois_classes] FOREIGN KEY([classeid])
REFERENCES [dbo].[classes] ([classeid])
GO
ALTER TABLE [dbo].[herois] CHECK CONSTRAINT [FK_herois_classes]
GO
ALTER TABLE [dbo].[personagens]  WITH CHECK ADD  CONSTRAINT [FK_personagens_armaduras] FOREIGN KEY([armadurasid])
REFERENCES [dbo].[armaduras] ([armaduraid])
GO
ALTER TABLE [dbo].[personagens] CHECK CONSTRAINT [FK_personagens_armaduras]
GO
ALTER TABLE [dbo].[personagens]  WITH CHECK ADD  CONSTRAINT [FK_personagens_armas] FOREIGN KEY([armasid])
REFERENCES [dbo].[armas] ([armasid])
GO
ALTER TABLE [dbo].[personagens] CHECK CONSTRAINT [FK_personagens_armas]
GO
ALTER TABLE [dbo].[personagens]  WITH CHECK ADD  CONSTRAINT [FK_personagens_botas] FOREIGN KEY([botasid])
REFERENCES [dbo].[botas] ([botaid])
GO
ALTER TABLE [dbo].[personagens] CHECK CONSTRAINT [FK_personagens_botas]
GO
ALTER TABLE [dbo].[personagens]  WITH CHECK ADD  CONSTRAINT [FK_personagens_herois] FOREIGN KEY([heroisid])
REFERENCES [dbo].[herois] ([heroisid])
GO
ALTER TABLE [dbo].[personagens] CHECK CONSTRAINT [FK_personagens_herois]
GO
ALTER TABLE [dbo].[personagens]  WITH CHECK ADD  CONSTRAINT [FK_personagens_usuarios] FOREIGN KEY([userid])
REFERENCES [dbo].[usuarios] ([userid])
GO
ALTER TABLE [dbo].[personagens] CHECK CONSTRAINT [FK_personagens_usuarios]
GO
