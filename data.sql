insert into Users (UserID,Username, FirstName, LastName, DateOfBirth, Password, DateAdded)
Values ('1','mmuggleston0', 'Marcelia', 'Muggleston', '2000-9-21', ' habitasse', '9-25-2005'),
('2','cshurrock1', 'Concordia', 'Shurrock', '2005-6-6', ' rhoncus', '6-26-2005'),
('3','nyong2', 'Nanete', 'Yong', '2002-2-29', ' parturient', '10-25-2004')


insert into Friends(FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted, DateAdded)
Values ('1','3','2','TRUE','3-19-2024'),
('2','1','3','FALSE','12-17-2024'),
('3','2','1','FALSE','10-25-2024')

insert into Groups(GroupID,GroupName,Createdby, DateAdded)
Values ('1','Cogilith','3','1-27-2024'),
('2','Kimia','2','6-29-2024'),
('3','Topiczoom','1','5-15-2024')

insert into GroupMembershipRequests(GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted, DateAccepted)
Values ('1','3','2','TRUE','3-22-2024'),
('2','1','3','FALSE','9-26-2023'),
('3','2','1','FALSE','6-8-2024')

insert into Posts(PostID, PostDescription,PostedBy,IsPublic,IsOnlyForFriends,GroupID,DatePosted )
Values ('1','Hatity','1','TRUE','FALSE','1','6-12-2024'),
('2','Tin','2','FALSE','TRUE','2','5-8-2024'),
('3','Konklab','3','FALSE','TRUE','3','9-29-2024')
