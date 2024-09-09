CREATE TABLE Artist (
    ArtistID SERIAL NOT NULL,
    Name VARCHAR(55),
    PRIMARY KEY (ArtistID)
);

CREATE TABLE List (
    ListID SERIAL NOT NULL,
    Name VARCHAR(100),
    Count INT,
    Description VARCHAR(100),
    PRIMARY KEY (ListID)
);

CREATE TABLE Song (
    SongID SERIAL NOT NULL,
    ArtistID INT,
    Name VARCHAR(55),
    PRIMARY KEY (SongID),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);

CREATE TABLE Song_List (
    Song_ListID SERIAL NOT NULL,
    SongID INT,
    ListID INT,
    Ranking INT,
    PRIMARY KEY (Song_ListID),
    FOREIGN KEY (SongID) REFERENCES Song(SongID),
    FOREIGN KEY (ListID) REFERENCES List(ListID)
);
