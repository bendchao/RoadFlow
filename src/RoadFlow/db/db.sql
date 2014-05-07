/****** Object:  Table [dbo].[AppLibrary]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppLibrary](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[OpenMode] [int] NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Params] [varchar](max) NULL,
	[Manager] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_AppLibrary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBConnection]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBConnection](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Type] [varchar](500) NOT NULL,
	[ConnectionString] [varchar](max) NOT NULL,
	[Note] [varchar](max) NULL,
 CONSTRAINT [PK_DBConnection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dictionary](
	[ID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Code] [varchar](500) NULL,
	[Value] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Other] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
	[UseCache] [bit] NOT NULL,
 CONSTRAINT [PK_Dictionary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[WriteTime] [datetime] NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[UserName] [nvarchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[URL] [varchar](max) NULL,
	[Contents] [varchar](max) NULL,
	[Others] [varchar](max) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organize]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organize](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](2000) NOT NULL,
	[Number] [varchar](900) NOT NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Sort] [int] NOT NULL,
	[Depth] [int] NOT NULL,
	[ChildsLength] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Organize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UseMember] [varchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleApp]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleApp](
	[ID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[AppID] [uniqueidentifier] NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Params] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_RoleApp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTest]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempTest](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NULL,
	[UserID] [varchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[DeptID] [varchar](50) NULL,
	[DeptName] [nvarchar](500) NULL,
	[Date1] [datetime] NULL,
	[Date2] [datetime] NULL,
	[Type] [varchar](50) NULL,
	[Reason] [nvarchar](max) NULL,
	[WriteTime] [datetime] NULL,
	[test] [varchar](5000) NULL,
	[test1] [varchar](5000) NULL,
	[test2] [varchar](5000) NULL,
	[test3] [varchar](5000) NULL,
 CONSTRAINT [PK_TempTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersInfo]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsersInfo](
	[UserID] [uniqueidentifier] NOT NULL,
	[Officer] [nvarchar](500) NULL,
	[Tel] [varchar](500) NULL,
	[Fax] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[Email] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[MSN] [varchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_UsersInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersRelation]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersRelation](
	[UserID] [uniqueidentifier] NOT NULL,
	[OrganizeID] [uniqueidentifier] NOT NULL,
	[IsMain] [int] NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_UsersRelation] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[OrganizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersRole]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersRole](
	[MemberID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_UsersRole] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkFlow]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlow](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](500) NOT NULL,
	[Manager] [varchar](5000) NOT NULL,
	[InstanceManager] [varchar](5000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserID] [uniqueidentifier] NOT NULL,
	[DesignJSON] [varchar](max) NULL,
	[InstallDate] [datetime] NULL,
	[InstallUserID] [uniqueidentifier] NULL,
	[RunJSON] [varchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlow_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowButtons]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlowButtons](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Ico] [varchar](500) NULL,
	[Script] [varchar](max) NULL,
	[Note] [varchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowButtons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowComment]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlowComment](
	[ID] [uniqueidentifier] NOT NULL,
	[MemberID] [varchar](max) NOT NULL,
	[Comment] [nvarchar](500) NOT NULL,
	[Type] [int] NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowData]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlowData](
	[ID] [uniqueidentifier] NOT NULL,
	[InstanceID] [uniqueidentifier] NOT NULL,
	[LinkID] [uniqueidentifier] NOT NULL,
	[TableName] [varchar](500) NOT NULL,
	[FieldName] [varchar](500) NOT NULL,
	[Value] [varchar](8000) NOT NULL,
 CONSTRAINT [PK_WorkFlowData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowDelegate]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkFlowDelegate](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[FlowID] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowDelegate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkFlowForm]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlowForm](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreateUserID] [uniqueidentifier] NOT NULL,
	[CreateUserName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastModifyTime] [datetime] NOT NULL,
	[Html] [text] NULL,
	[Attribute] [varchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkFlowTask]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkFlowTask](
	[ID] [uniqueidentifier] NOT NULL,
	[PrevID] [uniqueidentifier] NOT NULL,
	[PrevStepID] [uniqueidentifier] NOT NULL,
	[FlowID] [uniqueidentifier] NOT NULL,
	[StepID] [uniqueidentifier] NOT NULL,
	[StepName] [nvarchar](500) NOT NULL,
	[InstanceID] [varchar](50) NOT NULL,
	[GroupID] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[SenderID] [uniqueidentifier] NOT NULL,
	[SenderName] [nvarchar](50) NOT NULL,
	[SenderTime] [datetime] NOT NULL,
	[ReceiveID] [uniqueidentifier] NOT NULL,
	[ReceiveName] [nvarchar](50) NOT NULL,
	[ReceiveTime] [datetime] NOT NULL,
	[OpenTime] [datetime] NULL,
	[CompletedTime] [datetime] NULL,
	[CompletedTime1] [datetime] NULL,
	[Comment] [varchar](max) NULL,
	[IsSign] [int] NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_WorkFlowTask] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkGroup]    Script Date: 2014/5/4 21:49:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkGroup](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Members] [varchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'8cff8e9f-f539-41c9-80ce-06a97f481390', N'日志查询', N'/Platform/Log/Default', N'系统管理', 0, 0, 0, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'303def4d-5ad8-420c-98ec-14b0882a300b', N'实例管理', N'/Platform/WorkFlow/Tasks/InstanceList', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'90cba9bf-8fe2-4bbc-a472-1dcf4becf5d6', N'流程设计', N'/Platform/WorkFlow/Designer/Default', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'55f07fb6-f761-4e97-b051-1de213b73baf', N'临时测试', N'/Platform/TempTest/Default.cshtml', N'其它类别', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'b8a7bca3-9a32-45eb-b685-1e8c05c78bd3', N'请假', N'/Platform/WorkFlow/FormDesigner/Forms/5646bede-9d15-96d6-01e4-0f763c306ed5.cshtml', N'流程表单', 0, NULL, NULL, N'', NULL, N'流程表单', N'5646bede-9d15-96d6-01e4-0f763c306ed5')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'297f012f-4987-4cdd-b2c0-1f9672d65d64', N'应用程序库', N'/Platform/AppLibrary/List', N'系统管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'a6c6e23f-1726-486b-b91c-3fad52f3f0f7', N'已办事项', N'/Platform/WorkFlow/Tasks/CompletedList', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'bb411263-3dfc-4e4c-92e4-45049327bc42', N'数据库连接', N'/Platform/DBConn/Default', N'系统管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'2193be16-fea9-4903-b80a-45b2dacb02b5', N'表单设计', N'/Platform/WorkFlow/FormDesigner/Default', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'3b90b7c6-7b0e-4d55-9920-73430831adcf', N'应用模板', N'/Platform/RoleApp/Default', N'系统管理', 2, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'11304c22-887c-4ebf-8718-95326a6a58b4', N'数据字典', N'/Platform/Dict/Default', N'系统管理', 1, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', N'/Platform/WorkFlow/Run/Default', N'流程应用', 0, NULL, NULL, N'flowid=a6509c1b-f49f-47a6-829d-ec43b9210eb2', NULL, N'流程应用', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2')
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'15578cd3-9d10-49ee-b0bf-aaabc70a436e', N'按钮管理', N'/Platform/WorkFlow/Buttons/Default', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'072a784c-8a0e-402f-804f-aae783d10f46', N'待办事项', N'/Platform/WorkFlow/Tasks/WaitList', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'f0dfb92c-7fd7-42ea-bfd1-b7ef8a91fab3', N'在线用户', N'/Platform/OnlineUsers/Default', N'系统管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'dd12865d-63e6-44fe-83fc-d98cc9e093c0', N'组织机构', N'/Platform/Members/Default', N'系统管理', 2, 800, 500, N'', NULL, N'', NULL)
INSERT [dbo].[AppLibrary] ([ID], [Title], [Address], [Type], [OpenMode], [Width], [Height], [Params], [Manager], [Note], [Code]) VALUES (N'b4ccf4c8-671f-4211-9f57-fbd371f4ff42', N'意见管理', N'/Platform/WorkFlow/Comments/Default', N'流程管理', 0, NULL, NULL, N'', NULL, N'', NULL)
INSERT [dbo].[DBConnection] ([ID], [Name], [Type], [ConnectionString], [Note]) VALUES (N'06075250-30dc-4d32-bf97-e922cb30fac8', N'平台连接', N'SqlServer', N'Data Source=.;Initial Catalog=RoadFlow;UID=sa;PWD=111', NULL)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'b50d5b1e-436a-48a4-b1fb-1f3cfb5579af', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出窗口(模态)', NULL, N'4', NULL, NULL, 5, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'f3a258bf-c3c9-4591-9792-22401e017c83', N'52e83a92-6ddf-43c2-86a9-944ce7421cbb', N'应用程序打开方式', N'appopenmodel', NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'cbeb8fff-3b38-4f31-99e2-411a52976a37', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出层(模态)', NULL, N'2', NULL, NULL, 3, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'2a2bbee3-9883-4185-a64c-4430aa20e0cb', N'00000000-0000-0000-0000-000000000000', N'数据字典', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'97867c71-9bbd-4894-b5cd-4ab0142803cc', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'标签方式', NULL, N'0', NULL, NULL, 1, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'5f1a27c8-2e7a-419a-9dff-701602a5c40f', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出窗口', NULL, N'3', NULL, NULL, 4, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'b8bffd9a-1ab5-447d-9f5d-933e327e77c4', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'弹出层', NULL, N'1', NULL, NULL, 2, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'52e83a92-6ddf-43c2-86a9-944ce7421cbb', N'2a2bbee3-9883-4185-a64c-4430aa20e0cb', N'系统字典条目', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Dictionary] ([ID], [ParentID], [Title], [Code], [Value], [Note], [Other], [Sort], [UseCache]) VALUES (N'268ee7df-e4ac-4b6a-bfff-ae995ccdc7fa', N'f3a258bf-c3c9-4591-9792-22401e017c83', N'新窗口', NULL, N'5', NULL, NULL, 6, 0)
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'76da7184-b1d9-44c0-9767-193c0d466e87', N'处理了流程(请假申请)', N'流程相关', CAST(0x0000A31F00A10E1C AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'::1', N'http://localhost:84/Platform/WorkFlow/Run/Execute?flowid=a6509c1b-f49f-47a6-829d-ec43b9210eb2&instanceid=&taskid=&stepid=6421e3b1-a2bc-4418-b6d8-d38b4456bc9e&groupid=&appid=6135e10e-c0aa-464b-b78a-86b9fb8eb4a4&tabid=tab_6135e10ec0aa464bb78a86b9fb8eb4a4', N'处理参数：{"type":"submit","steps":[{"id":"fabd66d0-e260-4a4b-b774-3302a1617cc5","member":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe"}]}<br/>处理结果：成功<br/>调试信息：已发送到：部门主管审批<br/>返回信息：已发送到：部门主管审批', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'1afce91f-4621-4bc8-8089-7b2c528d1e95', N'用户登录成功', N'用户登录', CAST(0x0000A31F0102D73F AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'::1', N'http://localhost:84/Login1?iframeid=roadui_window_06896250361250502&openerid=', N'用户:徐红(eb03262c-ab60-4bc6-a4c0-96e66a4229fe)登录成功', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'd85a6643-c742-4dd8-86a1-8440860bb592', N'用户登录成功', N'用户登录', CAST(0x0000A3210162171E AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'::1', N'http://localhost:84/Login1?iframeid=roadui_window_03973259872714331&openerid=', N'用户:徐红(eb03262c-ab60-4bc6-a4c0-96e66a4229fe)登录成功', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'9d29918a-436f-4381-84f8-b898fb86ba61', N'用户登录成功', N'用户登录', CAST(0x0000A31F00A0F596 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'::1', N'http://localhost:84/Login1?iframeid=roadui_window_05527290098333012&openerid=', N'用户:徐红(eb03262c-ab60-4bc6-a4c0-96e66a4229fe)登录成功', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'e51a151b-e301-48f7-817f-e55f4e5ebd5a', N'用户登录成功', N'用户登录', CAST(0x0000A32101599228 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'::1', N'http://localhost:84/Login1?iframeid=roadui_window_08062025955039048&openerid=', N'用户:徐红(eb03262c-ab60-4bc6-a4c0-96e66a4229fe)登录成功', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Log] ([ID], [Title], [Type], [WriteTime], [UserID], [UserName], [IPAddress], [URL], [Contents], [Others]) VALUES (N'4e7c6e49-0fe7-4195-a179-ffb75a58cd44', N'修改了流程按钮', N'流程相关', CAST(0x0000A31F0098FF05 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪', N'::1', N'http://localhost:84/Platform/WorkFlow/Buttons/Edit?id=b8a7af17-7ad5-4699-b679-d421691dd737&appid=74e0add2-3c51-4e6a-b1dc-6a256918ca4c&tabid=tab_74e0add23c514e6ab1dc6a256918ca4c&iframeid=window_74e0add23c514e6ab1dc6a256918ca4c&openerid=tab_74e0add23c514e6ab1dc6a256918ca4c', N'修改前：<?xml version="1.0" encoding="utf-16"?>
<WorkFlowButtons xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <ID>b8a7af17-7ad5-4699-b679-d421691dd737</ID>
  <Title>处理过程</Title>
  <Ico>/Images/ico/ui_saccordion.png</Ico>
  <Script>showProcess();</Script>
  <Note>查看流程处理过程</Note>
  <Sort>8</Sort>
</WorkFlowButtons>修改后：<?xml version="1.0" encoding="utf-16"?>
<WorkFlowButtons xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <ID>b8a7af17-7ad5-4699-b679-d421691dd737</ID>
  <Title>过程查看</Title>
  <Ico>/Images/ico/ui_saccordion.png</Ico>
  <Script>showProcess();</Script>
  <Note>查看流程处理过程</Note>
  <Sort>8</Sort>
</WorkFlowButtons>', N'操作系统：Windows7/Server 2008 R2 浏览器：IE10')
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'3975624c-148f-4838-88c9-12af85d2e05e', N'财务部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 5, 1, 2, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'82682cf5-50e1-4901-911b-1a935b5ddb6c', N'总经理', N'04f12beb-d99d-43df-ac9a-3042957d6bda,82682cf5-50e1-4901-911b-1a935b5ddb6c', 3, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 2, 1, 1, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'04f12beb-d99d-43df-ac9a-3042957d6bda', N'路德软件', N'04f12beb-d99d-43df-ac9a-3042957d6bda', 1, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 10, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'74ceda12-c919-4d80-b0f2-3ac254adb65a', N'出纳', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e,74ceda12-c919-4d80-b0f2-3ac254adb65a', 3, 0, N'3975624c-148f-4838-88c9-12af85d2e05e', 3, 2, 1, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'1e9fba5a-7ba2-48dc-a89f-9377837912f7', N'会计', N'04f12beb-d99d-43df-ac9a-3042957d6bda,3975624c-148f-4838-88c9-12af85d2e05e,1e9fba5a-7ba2-48dc-a89f-9377837912f7', 3, 0, N'3975624c-148f-4838-88c9-12af85d2e05e', 1, 2, 1, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'96f75a51-779b-491a-9773-cb5f90cef11e', N'研发部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,96f75a51-779b-491a-9773-cb5f90cef11e', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 4, 1, 3, NULL)
INSERT [dbo].[Organize] ([ID], [Name], [Number], [Type], [Status], [ParentID], [Sort], [Depth], [ChildsLength], [Note]) VALUES (N'4f4865de-fda0-417b-9465-d7648309b772', N'销售部', N'04f12beb-d99d-43df-ac9a-3042957d6bda,4f4865de-fda0-417b-9465-d7648309b772', 2, 0, N'04f12beb-d99d-43df-ac9a-3042957d6bda', 6, 1, 1, NULL)
INSERT [dbo].[Role] ([ID], [Name], [UseMember], [Note]) VALUES (N'5cf60b9c-f252-4bf3-9e45-330d45f2620d', N'工作人员', NULL, NULL)
INSERT [dbo].[Role] ([ID], [Name], [UseMember], [Note]) VALUES (N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'系统管理员', N'u_1acf9c22-bfb6-4673-a698-a58233747b92,u_c2d3012a-c816-4149-ac04-9da0b60e3867,u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe,u_8086d01f-7ae3-402e-b543-d34f1059f79a,u_095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', NULL)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'47a2dc9a-f438-4a3e-8efc-1ec59a3300cd', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'a6c6e23f-1726-486b-b91c-3fad52f3f0f7', N'已办事项', NULL, 2)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'ce5b7f56-275b-4733-b485-298102f1479c', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'b4ccf4c8-671f-4211-9f57-fbd371f4ff42', N'意见管理', NULL, 4)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程处理', NULL, 2)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'0a9e2201-c921-47d0-9497-5ed9cf22f672', N'3eb2aa53-2095-41f4-8c3d-5a957db3e7d8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'072a784c-8a0e-402f-804f-aae783d10f46', N'待办事项', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'ae221280-9561-4d93-9cf2-63c6d6ad7698', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'f0dfb92c-7fd7-42ea-bfd1-b7ef8a91fab3', N'在线用户', NULL, 8)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'74e0add2-3c51-4e6a-b1dc-6a256918ca4c', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'15578cd3-9d10-49ee-b0bf-aaabc70a436e', N'按钮管理', NULL, 3)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程测试', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'流程管理', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'ceae1645-9785-45e1-822e-f082db3ea902', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'系统管理', NULL, 3)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'6135e10e-c0aa-464b-b78a-86b9fb8eb4a4', N'22f1c24e-cb9c-428a-86d7-7c0e714d6244', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'dd56ebf0-6fdb-46bf-86e9-9b57adb64766', N'请假申请', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'233d8ad4-8369-4201-b9a7-927d51ff0e35', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'dd12865d-63e6-44fe-83fc-d98cc9e093c0', N'组织机构', NULL, 2)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'461795cc-af9d-4bf9-bddb-9736bfb97bdb', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'8cff8e9f-f539-41c9-80ce-06a97f481390', N'日志查询', NULL, 3)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'aa80e3aa-6547-416e-839b-a25bc7f2a099', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'90cba9bf-8fe2-4bbc-a472-1dcf4becf5d6', N'流程设计', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'58f06d96-1ebe-456d-b86b-b97d24e62ab0', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'303def4d-5ad8-420c-98ec-14b0882a300b', N'实例管理', NULL, 5)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'72844f88-d2ec-495c-a2da-bb11e1bb7fec', N'df9f00a0-75c9-45f5-892c-7f2e9d1a3d35', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'2193be16-fea9-4903-b80a-45b2dacb02b5', N'表单设计', NULL, 2)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'709c6880-f516-4260-a19c-c20f96d9a419', N'00000000-0000-0000-0000-000000000000', N'5cf60b9c-f252-4bf3-9e45-330d45f2620d', NULL, N'管理目录', NULL, 1)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'32e8c7fa-5607-4949-90bd-c722ce30d15a', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'3b90b7c6-7b0e-4d55-9920-73430831adcf', N'应用模板', NULL, 6)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'4c520912-9454-4ed9-8060-cc3a612862aa', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'11304c22-887c-4ebf-8718-95326a6a58b4', N'数据字典', NULL, 4)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'3e0bbdee-92b4-4303-b434-ed752fc20902', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'297f012f-4987-4cdd-b2c0-1f9672d65d64', N'应用程序库', NULL, 5)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'ad60040d-99a1-420a-8c47-eda6166f2b74', N'7a8294ed-4393-46eb-8f11-81bc7bbe8458', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', N'bb411263-3dfc-4e4c-92e4-45049327bc42', N'数据库连接', NULL, 7)
INSERT [dbo].[RoleApp] ([ID], [ParentID], [RoleID], [AppID], [Title], [Params], [Sort]) VALUES (N'ceae1645-9785-45e1-822e-f082db3ea902', N'00000000-0000-0000-0000-000000000000', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', NULL, N'管理目录', NULL, 1)
INSERT [dbo].[TempTest] ([ID], [Title], [UserID], [UserName], [DeptID], [DeptName], [Date1], [Date2], [Type], [Reason], [WriteTime], [test], [test1], [test2], [test3]) VALUES (N'6468cc3b-6d65-4749-92f4-788e9d32ff5a', N'请假申请(徐红)', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', NULL, N'96f75a51-779b-491a-9773-cb5f90cef11e', NULL, CAST(0x0000A30200A0F320 AS DateTime), CAST(0x0000A32A00A0F320 AS DateTime), N'1', N'22222222222', NULL, N'', NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'张刚', N'zg', N'32D782480428DFB43FC52A3E89BD8B2E', 0, 2, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', N'xh', N'ECD43EBFA68902CD4E0DCBD8D44D694C', 0, 1, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'王中平', N'wzp', N'A58EC1C8100D0E28ECAB5FE090F41CE2', 0, 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'周丽', N'zl', N'C6E72931096E04CBCC3F04ECA9A65515', 0, 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'fded2b24-e7a0-41e4-90ed-aab7148ae113', N'王磊', N'wl', N'A812D75485728C38E831E7D9724C7BA8', 0, 3, N'0')
INSERT [dbo].[Users] ([ID], [Name], [Account], [Password], [Status], [Sort], [Note]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'李晨新', N'lcx', N'5558FE1D778166F58C7E8CB7C505A2D0', 0, 1, N'0')
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 3)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'8d61ad4d-0742-411f-9fcb-935862185d56', N'04f12beb-d99d-43df-ac9a-3042957d6bda', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 2)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'4f4865de-fda0-417b-9465-d7648309b772', 0, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'1e9fba5a-7ba2-48dc-a89f-9377837912f7', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'74ceda12-c919-4d80-b0f2-3ac254adb65a', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'fded2b24-e7a0-41e4-90ed-aab7148ae113', N'96f75a51-779b-491a-9773-cb5f90cef11e', 1, 1)
INSERT [dbo].[UsersRelation] ([UserID], [OrganizeID], [IsMain], [Sort]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'82682cf5-50e1-4901-911b-1a935b5ddb6c', 1, 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'095ba7de-084a-41aa-a21e-4ccbb7cd4ff8', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'c2d3012a-c816-4149-ac04-9da0b60e3867', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'1acf9c22-bfb6-4673-a698-a58233747b92', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[UsersRole] ([MemberID], [RoleID], [IsDefault]) VALUES (N'8086d01f-7ae3-402e-b543-d34f1059f79a', N'efb111aa-2308-48e2-b1fc-54181ec35e3f', 1)
INSERT [dbo].[WorkFlow] ([ID], [Name], [Type], [Manager], [InstanceManager], [CreateDate], [CreateUserID], [DesignJSON], [InstallDate], [InstallUserID], [RunJSON], [Status]) VALUES (N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'请假申请', N'默认分类', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe', CAST(0x0000A22000AE1E2B AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"a6509c1b-f49f-47a6-829d-ec43b9210eb2","name":"请假申请","type":"默认分类","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"test3"},"steps":[{"id":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","name":"填写请假单","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":87,"y":116,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"0","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"1","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":1},{"id":"other_splitline","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3},{"id":"da606ff2-cdf2-4363-8212-cc7c633fb2f2","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"ce0c165a-778b-4817-a9c5-21f862f1c96e","name":"领导审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"2.5","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":302,"y":46,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"1","backModel":"2","backType":"2","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"FlowCustomEvent.Test1","submitAfter":"FlowCustomEvent.Test2","backBefore":"","backAfter":""}},{"id":"fabd66d0-e260-4a4b-b774-3302a1617cc5","name":"部门主管审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"请假天数大于5天报领导审批","position":{"x":302,"y":165,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"1","handlerType":"0","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"2","backStep":"ce0c165a-778b-4817-a9c5-21f862f1c96e","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":2},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":3},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"FlowCustomEvent.Test1","backAfter":"FlowCustomEvent.Test1"}},{"id":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","name":"反馈发起人","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":558,"y":120,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"028177ab-ffe6-4e33-b210-6aeb94f3a0fd","from":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","to":"fabd66d0-e260-4a4b-b774-3302a1617cc5","customMethod":"","noaccordMsg":"","sql":""},{"id":"a1346972-fa3b-4133-8730-142de051d5c2","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"dba640aa-6016-405e-8417-11b2ec1abeb4","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"ce0c165a-778b-4817-a9c5-21f862f1c96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"8819d082-8a8c-4d4e-b7c9-6752eff8ec2a","from":"ce0c165a-778b-4817-a9c5-21f862f1c96e","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""}]}', CAST(0x0000A31D010B8011 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'{"id":"a6509c1b-f49f-47a6-829d-ec43b9210eb2","name":"请假申请","type":"默认分类","manager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","instanceManager":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","removeCompleted":"0","debug":"0","debugUsers":"u_eb03262c-ab60-4bc6-a4c0-96e66a4229fe","note":"","databases":[{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","linkName":"平台连接","table":"TempTest","primaryKey":"ID"}],"titleField":{"link":"06075250-30dc-4d32-bf97-e922cb30fac8","table":"TempTest","field":"test3"},"steps":[{"id":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","name":"填写请假单","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":87,"y":116,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"0","handlerType":"0","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"1","backModel":"0","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"da7c699c-3c55-4657-8781-6881ac9117b7","sort":1},{"id":"other_splitline","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3},{"id":"da606ff2-cdf2-4363-8212-cc7c633fb2f2","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"0","check":"2"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"0","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"0","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}},{"id":"ce0c165a-778b-4817-a9c5-21f862f1c96e","name":"领导审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"2.5","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":302,"y":46,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"1","handlerType":"4","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"1","backModel":"2","backType":"2","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":0},{"id":"other_splitline","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"FlowCustomEvent.Test1","submitAfter":"FlowCustomEvent.Test2","backBefore":"","backAfter":""}},{"id":"fabd66d0-e260-4a4b-b774-3302a1617cc5","name":"部门主管审批","opinionDisplay":"1","expiredPrompt":"1","signatureType":"1","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"请假天数大于5天报领导审批","position":{"x":302,"y":165,"width":108,"height":50},"behavior":{"flowType":"1","runSelect":"1","handlerType":"0","selectRange":"04f12beb-d99d-43df-ac9a-3042957d6bda","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"0","backModel":"0","backType":"2","backStep":"ce0c165a-778b-4817-a9c5-21f862f1c96e","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"other_splitline","sort":1},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":2},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":3},{"id":"8982b97c-adba-4a3a-afd9-9a3ef6ff12d8","sort":4}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"FlowCustomEvent.Test1","backAfter":"FlowCustomEvent.Test1"}},{"id":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","name":"反馈发起人","opinionDisplay":"1","expiredPrompt":"1","signatureType":"2","workTime":"","limitTime":"","otherTime":"","archives":"1","archivesParams":"","note":"","position":{"x":558,"y":120,"width":108,"height":50},"behavior":{"flowType":"0","runSelect":"0","handlerType":"5","selectRange":"","handlerStep":"","valueField":"","defaultHandler":"","hanlderModel":"3","backModel":"1","backType":"0","backStep":"","percentage":""},"forms":[{"id":"b8a7bca3-9a32-45eb-b685-1e8c05c78bd3","name":"","type":"流程表单","srot":0}],"buttons":[{"id":"b8a7af17-7ad5-4699-b679-d421691dd737","sort":0},{"id":"3b271f67-0433-4082-ad1a-8df1b967b879","sort":1},{"id":"86b7fa6c-891f-4565-9309-81672d3ba80a","sort":2},{"id":"954effa8-03b8-461a-aaa8-8727d090dcb9","sort":3}],"fieldStatus":[{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.ID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Title","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.UserName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptID","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.DeptName","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Date2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Type","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.Reason","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.WriteTime","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test1","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test2","status":"1","check":"0"},{"field":"06075250-30dc-4d32-bf97-e922cb30fac8.TempTest.test3","status":"1","check":"0"}],"event":{"submitBefore":"","submitAfter":"","backBefore":"","backAfter":""}}],"lines":[{"id":"028177ab-ffe6-4e33-b210-6aeb94f3a0fd","from":"6421e3b1-a2bc-4418-b6d8-d38b4456bc9e","to":"fabd66d0-e260-4a4b-b774-3302a1617cc5","customMethod":"","noaccordMsg":"","sql":""},{"id":"a1346972-fa3b-4133-8730-142de051d5c2","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"dba640aa-6016-405e-8417-11b2ec1abeb4","from":"fabd66d0-e260-4a4b-b774-3302a1617cc5","to":"ce0c165a-778b-4817-a9c5-21f862f1c96e","customMethod":"","sql":"","noaccordMsg":""},{"id":"8819d082-8a8c-4d4e-b7c9-6752eff8ec2a","from":"ce0c165a-778b-4817-a9c5-21f862f1c96e","to":"93536eaf-2ea1-4a29-9d88-8bad1927a96e","customMethod":"","sql":"","noaccordMsg":""}]}', 2)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'da7c699c-3c55-4657-8781-6881ac9117b7', N'刷新', N'/Images/ico/Refresh.png', N'window.location=window.location;', N'刷新当前流程页面', 6)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'86b7fa6c-891f-4565-9309-81672d3ba80a', N'退回', N'/Images/ico/arrow_large_left.png', N'flowBack();', N'退回到上一步或某一步', 2)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'954effa8-03b8-461a-aaa8-8727d090dcb9', N'完成', N'/Images/ico/role.gif', N'flowCompleted();', N'完成流程，流程最后一步配置此按钮', 3)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'3b271f67-0433-4082-ad1a-8df1b967b879', N'保存', N'/Images/ico/save.gif', N'flowSave();', N'保存任务,以便以后继续处理', 4)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'8982b97c-adba-4a3a-afd9-9a3ef6ff12d8', N'发送', N'/Images/ico/arrow_large_right.png', N'flowSend();', N'发送到下一步', 1)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'da606ff2-cdf2-4363-8212-cc7c633fb2f2', N'关闭', N'/Images/ico/application_osx_remove.png', N'if(confirm("您真的关闭窗口吗?"))
{
      top.mainTab.closeTab();
}', N'关闭窗口', 5)
INSERT [dbo].[WorkFlowButtons] ([ID], [Title], [Ico], [Script], [Note], [Sort]) VALUES (N'b8a7af17-7ad5-4699-b679-d421691dd737', N'过程查看', N'/Images/ico/ui_saccordion.png', N'showProcess();', N'查看流程处理过程', 8)
INSERT [dbo].[WorkFlowComment] ([ID], [MemberID], [Comment], [Type], [Sort]) VALUES (N'53faa4e2-1396-48ae-8153-087101ee0d5c', N'', N'不同意', 0, 2)
INSERT [dbo].[WorkFlowComment] ([ID], [MemberID], [Comment], [Type], [Sort]) VALUES (N'6ea44f47-8f2a-4eb6-bf34-dfd4c12d420a', N'', N'同意', 0, 1)
INSERT [dbo].[WorkFlowForm] ([ID], [Name], [CreateUserID], [CreateUserName], [CreateTime], [LastModifyTime], [Html], [Attribute], [Status]) VALUES (N'5646bede-9d15-96d6-01e4-0f763c306ed5', N'请假', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐洪兵', CAST(0x0000A3100153FA8B AS DateTime), CAST(0x0000A31D00CCF00E AS DateTime), N'<p style="text-align: center;">&nbsp;</p><p style="text-align: center;"><span style="font-size: 24px;"><strong>请假申请&nbsp;</strong></span></p><p>&nbsp;</p><table class="formtable" data-sort="sortDisabled"><tbody><tr class="firstRow"><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" valign="top" width="547"><span style="font-size: 12px;">请假人：<input name="TempTest.UserID" id="TempTest.UserID" value="组织机构选择" more="0" type1="flow_org" defaultvalue="0" org_type=",2," type="text"/></span></td><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" valign="top" width="557"><span style="font-size: 12px;">所在部门：</span><input name="TempTest.DeptID" id="TempTest.DeptID" value="组织机构选择" more="0" type1="flow_org" defaultvalue="2" org_type=",0," type="text"/></td></tr><tr><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" valign="top" width="542"><span style="font-size: 12px;">开始时间：</span><input name="TempTest.Date1" id="TempTest.Date1" value="日期时间选择" type1="flow_datetime" istime="1" defaultvalue="" type="text"/></td><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" valign="top" width="557"><span style="font-size: 12px;">结束时间：</span><input name="TempTest.Date2" id="TempTest.Date2" value="日期时间选择" type1="flow_datetime" istime="1" defaultvalue="" type="text"/></td></tr><tr><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" rowspan="1" colspan="1" valign="top" width="549"><span style="font-size: 12px;">请假类型：<input name="TempTest.Type" id="TempTest.Type" type1="flow_radio" datasource="1" customopts="[{&quot;title&quot;:&quot;事假&quot;,&quot;value&quot;:&quot;0&quot;},{&quot;title&quot;:&quot;病假&quot;,&quot;value&quot;:&quot;1&quot;},{&quot;title&quot;:&quot;年假&quot;,&quot;value&quot;:&quot;2&quot;},{&quot;title&quot;:&quot;婚假&quot;,&quot;value&quot;:&quot;3&quot;},{&quot;title&quot;:&quot;产假&quot;,&quot;value&quot;:&quot;4&quot;},{&quot;title&quot;:&quot;陪护假&quot;,&quot;value&quot;:&quot;5&quot;}]" dictid="" type="radio"/><span id="_baidu_bookmark_start_2" style="line-height: 0px; display: none;">?</span></span></td><td style="border-color: rgb(221, 221, 221); -ms-word-break: break-all;" rowspan="1" align="" valign="top" width="549"><span style="font-size: 12px;">相关附件</span>：<input name="TempTest.test" id="TempTest.test" value="附件管理" type1="flow_files" filetype="" type="text"/>&nbsp;<span style="font-size: 12px;">//如病假上传医院证明等</span></td></tr><tr><td style="border-color: rgb(221, 221, 221); word-break: break-all;" rowspan="1" colspan="2" align="left" valign="top"><p><span style="font-size: 12px;">请假事由：&nbsp;</span></p><p><br/></p><p><span style="font-size: 12px;"><input name="TempTest.Reason" id="TempTest.Reason" style="width: 90%; height: 60px;" maxlength="500" value="文本域" type1="flow_textarea" isflow="1" defaultvalue="" valuetype="0" width1="90%" height1="60px" type="text"/></span></p><p><span style="font-size: 12px;"><span id="_baidu_bookmark_start_213" style="line-height: 0px; display: none;">?</span><span id="_baidu_bookmark_start_213" style="line-height: 0px; display: none;"></span></span></p></td></tr></tbody></table>', N'{"name":"请假","dbconn":"06075250-30dc-4d32-bf97-e922cb30fac8","dbtable":"TempTest","dbtablepk":"ID","dbtabletitle":"Title","apptype":"流程表单","autotitle":true,"id":"5646bede-9d15-96d6-01e4-0f763c306ed5","hasEditor":"1"}', 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'11defcb7-6564-40df-951f-0c37fa40ab79', N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'填写请假单', N'6468cc3b-6d65-4749-92f4-788e9d32ff5a', N'747465c8-dd72-449d-9c89-0a1918144ce4', 0, N'请假申请(徐红)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A31F00A10DF4 AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A31F00A10DF4 AS DateTime), CAST(0x0000A31F00A1DF08 AS DateTime), NULL, CAST(0x0000A31F00A10E16 AS DateTime), N'同意', 0, 2, NULL, 1)
INSERT [dbo].[WorkFlowTask] ([ID], [PrevID], [PrevStepID], [FlowID], [StepID], [StepName], [InstanceID], [GroupID], [Type], [Title], [SenderID], [SenderName], [SenderTime], [ReceiveID], [ReceiveName], [ReceiveTime], [OpenTime], [CompletedTime], [CompletedTime1], [Comment], [IsSign], [Status], [Note], [Sort]) VALUES (N'1c430bba-4e4e-4226-a629-e29228ab6c84', N'11defcb7-6564-40df-951f-0c37fa40ab79', N'6421e3b1-a2bc-4418-b6d8-d38b4456bc9e', N'a6509c1b-f49f-47a6-829d-ec43b9210eb2', N'fabd66d0-e260-4a4b-b774-3302a1617cc5', N'部门主管审批', N'6468cc3b-6d65-4749-92f4-788e9d32ff5a', N'747465c8-dd72-449d-9c89-0a1918144ce4', 0, N'请假申请(徐红)', N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A31F00A10E1B AS DateTime), N'eb03262c-ab60-4bc6-a4c0-96e66a4229fe', N'徐红', CAST(0x0000A31F00A10E1B AS DateTime), CAST(0x0000A31F00A10F13 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[WorkGroup] ([ID], [Name], [Members], [Note]) VALUES (N'53ba1155-8739-4353-af76-8b65d77cfcfa', N'测试', N'f5d7bcaa-d12f-48a9-96d1-73e979da8042', NULL)
INSERT [dbo].[WorkGroup] ([ID], [Name], [Members], [Note]) VALUES (N'9ae062c9-f614-4465-ae16-c3f4d813a4c3', N'工作组中的工作组', N'3975624c-148f-4838-88c9-12af85d2e05e,w_53ba1155-8739-4353-af76-8b65d77cfcfa', NULL)
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF_Log_WriteTime]  DEFAULT (getdate()) FOR [WriteTime]
GO
ALTER TABLE [dbo].[TempTest] ADD  CONSTRAINT [DF_TempTest_DeptID]  DEFAULT (newid()) FOR [DeptID]
GO
ALTER TABLE [dbo].[TempTest] ADD  CONSTRAINT [DF_TempTest_WriteTime]  DEFAULT (getdate()) FOR [WriteTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单html' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Attribute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：0 保存 1 编译 2作废' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkFlowForm', @level2type=N'COLUMN',@level2name=N'Status'
GO
