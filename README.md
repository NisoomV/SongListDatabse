# SongListDatabase

A database design for organizing lists of songs, created by scraping song data from [Digital Dream Door](https://digitaldreamdoor.com/). This project allows for storing, querying, and ranking songs across multiple curated lists.

## Project Overview

This project leverages **BeautifulSoup** for web scraping, **Python** for data processing, and **Jupyter Notebooks** for documentation and code execution. The backend database is built with **PostgreSQL** to store and manage the song data in a relational format.

### Technologies Used
- **Web Scraping**: BeautifulSoup
- **Programming Language**: Python
- **Development Environment**: Jupyter Notebooks
- **Database**: PostgreSQL

## Database Schema

The database consists of the following tables:

- **Song**: Contains individual song records with a unique `SongID`, the song's name, and a reference to the artist.
- **Artist**: Stores artist details with a unique `ArtistID` and name.
- **List**: Represents curated lists of songs with a unique `ListID`, list name, a count of the songs, and a description.
- **Song_List**: A junction table that links songs to lists, with fields to store the `Ranking` of each song within its list.

### Schema Diagram

The schema diagram below illustrates the relationships between the tables:

![schema.png](https://github.com/NisoomV/SongListDatabse/blob/main/schema.png?raw=true)

### Table Structure

1. **Song**
   - `SongID` (Primary Key)
   - `ArtistID` (Foreign Key to Artist)
   - `Name`

2. **Artist**
   - `ArtistID` (Primary Key)
   - `Name`

3. **List**
   - `ListID` (Primary Key)
   - `Name`
   - `Count`
   - `Description`

4. **Song_List**
   - `Song_ListID` (Primary Key)
   - `SongID` (Foreign Key to Song)
   - `ListID` (Foreign Key to List)
   - `Ranking`

## Jupyter Notebook

The Jupyter Notebook `BestSongs.ipynb` contains:
- The web scraping logic using BeautifulSoup to extract song information from Digital Dream Door.
- Data processing steps to clean and structure the data.
- SQL queries to create tables and insert the scraped data into the PostgreSQL database.

## Getting Started

### Prerequisites
- Python 3.x
- PostgreSQL
- Jupyter Notebook
- Required Python libraries: BeautifulSoup, psycopg2, SQLAlchemy, etc.

### Setup Instructions
1. **Clone the Repository**:
   ```bash
   git clone <repository_url>
   cd SongListDatabase
2. **Configure PostgreSQL Database**:
- Create a new PostgreSQL database.
- Update the connection details in the Jupyter Notebook.
3. **Run the Notebook**:
- Open BestSongs.ipynb in Jupyter Notebook.
- Execute the cells to scrape the data, process it, and populate the PostgreSQL database.


