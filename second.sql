create table if not exists List_of_executors (
	Id serial primary key,
	Name_of_executors varchar(60) not null
	);
	
create table if not exists Psevdonym (
	Id serial primary key,
	executor_Psevdonyms varchar(60) not null,
	List_of_executors integer references List_of_executors(Id)
	);
	
create table if not exists List_of_albums (
	Id serial primary key,
	Name_of_album varchar(60) not null,
	Year_os_issue date not null,
	List_of_executors integer references List_of_executors(Id)
	);
	
create table if not exists Tracks (
	Id serial primary key,
	Name_of_track varchar(60) not null,
	Duration numeric(2,2),
	List_of_albums integer references List_of_albums(Id)
    );