--Create Users TABLE
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Create Friends TABLE
CREATE TABLE Friends (
    FriendID INT AUTO_INCREMENT PRIMARY KEY,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (FriendWhoAdded) REFERENCES Users(UserID),
FOREIGN KEY (FriendBeingAdded) REFERENCES Users(UserID)
);

--Create Groups TABLE
CREATE TABLE Groups (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (CreatedBy) REFERENCES Users(UserID)
);

--Create Posts TABLE
CREATE TABLE Posts (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (PostedBy) REFERENCES Users(UserID),
FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);


-- Create GroupMembershipRequests TABLE
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	FOREIGN KEY (GroupMemberUserID) REFERENCES Users(UserID),
  	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);
