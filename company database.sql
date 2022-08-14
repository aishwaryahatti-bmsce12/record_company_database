create  database comapny;
use company;  

create table contract(c_id varchar(10),album_terms int(10),start_date date,end_date date,primary key(c_id));
select *from contract;
insert into contract values("c1234",1,"2002/03/1","2003/04/7");
insert into contract values("c1231",1,"2002/03/5","2003/04/6");
insert into contract values("c1232",1,"2002/03/6","2003/04/7");
insert into contract values("c1233",1,"2002/03/6","2003/04/8");
insert into contract values("c1235",1,"2002/03/1","2003/04/3");
insert into contract values("c1236",1,"2002/03/3","2003/04/8");
insert into contract values("c1237",1,"2002/03/5","2003/04/8");
insert into contract values("c1238",1,"2002/03/7","2003/04/9");
insert into contract values("c1239",1,"2002/03/3","2003/04/9");
insert into contract values("c1230",1,"2002/03/9","2003/04/7");




create table artist(artist_id varchar(10),c_id varchar(15),artist_name varchar(15),genre varchar(10),
primary key(artist_id),foreign key(c_id)references contract(c_id));
insert into artist values("a3456","c1234","aish","folk");
insert into artist values("a3451","c1231","arch","rock");
insert into artist values("a3452","c1232","keer","rock");
insert into artist values("a3453","c1233","megha","metal");
insert into artist values("a3454","c1235","aksh","classic");
insert into artist values("a3455","c1236","madhu","alternative");
insert into artist values("a3346","c1237","chan","rock");
insert into artist values("a3457","c1238","fiza","softrock");
insert into artist values("a3458","c1239","daksh","classic");
insert into artist values("a3459","c1230","sahana","classic");
select *from artist;


create table composed_of(artist_id varchar(10),ssn varchar(10),primary key(artist_id));
select *from composed_of;
insert into composed_of values("a3456","115548");
insert into composed_of values("a3451","115545");
insert into composed_of values("a3452","115543");
insert into composed_of values("a3453","115543");
insert into composed_of values("a3454","115546");
insert into composed_of values("a3457","115549");
insert into composed_of values("a3455","115545");
insert into composed_of values("a3450","115540");
insert into composed_of values("a3458","115542");
insert into composed_of values("a3459","115541");



create table member(ssn varchar(10),fname varchar(15),lname varchar(15),phone int(15),addr varchar(15),city varchar(20),state varchar(15),zip int(15),
instrument  varchar(15),start_date date,end_date date,primary key(ssn)); 
select *from member;
insert into member values("115546","aish","hatti",1234567599,"vijaynagar","bengaluru","IN","46280","bass","2003/4/5","2003/5/7");
insert into member values("115561","mis","hatti",1234567599,"vijaynagar","bengaluru","IN","46280","drums","2003/4/5","2003/5/7");
insert into member values("115552","ish","hatti",1234567999,"vijaynagar","bengaluru","IN","46280","vocals","2003/4/5","2003/5/7");
insert into member values("115573","aih","hatti",1234567869,"vijaynagar","bengaluru","IN","46280","keyboard","2003/4/5","2003/5/7");
insert into member values("115544","ais","hatti",1234567999,"vijaynagar","bengaluru","IN","46280","guitar","2003/4/5","2003/5/7");
insert into member values("135566","akash","hatti",1234067899,"vijaynagar","bengaluru","IN","46280","bass","2003/4/5","2003/5/7");
insert into member values("145746","mahi","hatti",1234567899,"vijaynagar","bengaluru","IN","46280","guitar","2003/4/5","2003/5/7");
insert into member values("165536","nivi","hatti",1237567899,"vijaynagar","bengaluru","IN","46280","bass","2003/4/5","2003/5/7");
insert into member values("165546","bhagu","hatti",1239567899,"vijaynagar","bengaluru","IN","46280","bass","2003/4/5","2003/5/7");
insert into member values("105546","rani","hatti",1234367899,"vijaynagar","bengaluru","IN","46280","vocals","2003/4/5","2003/5/7");




create table album(album_id varchar(10),album_name varchar(15),date_released date,unit_price float(7),
artist_id varchar(15),studio_id varchar(10),start_date date,end_date date,hours_worked int(10),primary key(album_id),foreign key(artist_id)
references artist(artist_id),foreign key(studio_id) references studio(studio_id));
select *from album;
insert into album values("a3457","microscope","2011/2/8","9.99","a3456","s1262","2011/3/2","2011/3/2",200);
insert into album values("a3456","midgate","2011/2/8","9.99","a3451","s1456","2011/3/2","2011/3/2",205);
insert into album values("a3478","credit","2011/2/8","9.99","a3452","s1678","2011/3/2","2011/3/2",207);
insert into album values("a3477","system","2011/2/8","9.99","a3453","s1234","2011/3/2","2011/3/2",208);
insert into album values("a3422","fork","2011/2/8","9.99","a3454","s1267","2011/3/2","2011/3/2",203);
insert into album values("a3498","log","2011/2/8","9.99","a3455","s1786","2011/3/2","2011/3/2",202);
insert into album values("a3432","system","2011/2/8","9.99","a3457","s1269","2011/3/2","2011/3/2",201);
insert into album values("a3454","log","2011/2/8","9.99","a3458","s1234","2011/3/2","2011/3/2",200);
insert into album values("a3412","credit","2011/2/8","9.99","a3459","s1987","2011/3/2","2011/3/2",209);




create table sold_through(album_id varchar(10),transaction_id varchar(10),batch_units int(10),primary key(album_id,transaction_id));
insert into sold_through values("t2356","a3457",20000);
insert into sold_through values("t2389","a3456",20000);
insert into sold_through values("t2323","a3478",20000);
insert into sold_through values("t2376","a3477",20000);
insert into sold_through values("t2345","a3422",20000);
insert into sold_through values("t2398","a3498",20000);
insert into sold_through values("t2312","a3432",20000);
insert into sold_through values("t2398","a3454",20000);
insert into sold_through values("t2332","a3412",20000);
insert into sold_through values("t2305","a3445",20000);
select *from sold_through;





create table transaction(transaction_id varchar(10),date date,buyer_id varchar(10),primary key(transaction_id),
foreign key(buyer_id)references buyer(buyer_id));
select *from transaction;
insert into transaction values("t2356","B0001","15/3/4");
insert into transaction values("t2389","B0002","15/3/4");
insert into transaction values("t2323","B0003","15/3/4");
insert into transaction values("t2376","B0004","15/3/4");
insert into transaction values("t2345","B0005","15/3/4");
insert into transaction values("t2398","B0006","15/3/4");
insert into transaction values("t2312","B0007","15/3/4");
insert into transaction values("t2367","B0008","15/3/4");
insert into transaction values("t2332","B0009","15/3/4");
insert into transaction values("t2309","B0012","15/3/4");





create table buyer(buyer_id varchar(10),buyer_name varchar(10),phone int(15),addr varchar(15),city varchar(10),
state varchar(10),zip int(10),primary key(buyer_id));
select *from buyer;
insert into buyer values("B0001","misba",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0002","aish",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0003","sahana",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0004","keer",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0005","chandu",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0006","archu",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0007","nayana",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0008","bhagya",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0009","rani",12345678,"jpnagar","mysore","karnataka",13244);
insert into buyer values("B0012","fiza",12345678,"jpnagar","mysore","karnataka",13244);





create table song(song_id varchar(10),track_no int(10),song_name varchar(15),song_length int(15),
album_id varchar(10),writer_id varchar(10),primary key(song_id,album_id),foreign key(album_id)references album(album_id),
foreign key(writer_id)references writer(writer_id));
select *from song;
insert into song values("s0002",1,"maleyali","8.84","a3457","w001");
insert into song values("s0004",2,"sneha","3.84","a3456","w002");
insert into song values("s0006",5,"appu","2.84","a3478","w003");
insert into song values("s0008",7,"smile","7.84","a3477","w004");
insert into song values("s0010",8,"clouds","4.84","a3422","w005");
insert into song values("s0012",9,"range","2.84","a3498","w006");
insert into song values("s0014",3,"bump","1.84","a3432","w007");
insert into song values("s0016",12,"facts","3.84","a3454","w008");
insert into song values("s0018",15,"road","9.84","a3412","w009");


create table studio(studio_id varchar(10),studio_name varchar(15),phone int(15),s_addr varchar(15),s_city varchar(15),s_state varchar(15),zip int(15),
open_date date,close_date date,hrly_cost int(10),primary key(studio_id));
select *from studio;
insert into studio values("s1262","xxx",3456,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1456","yyy",3434,"jpnagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1678","zzz",3478,"jayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s234","mmm",3498,"Shivajinagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1267","aaa",3456,"rajajinagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1786","kkk",3443,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1269","jjj",3412,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1234","eee",3465,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1987","qqq",3431,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);
insert into studio values("s1567","uuu",3476,"Vijayanagar","mysore","ka",2324,"2002/2/4","2008/2/4",2000);




create table writer(writer_id varchar(10),fname varchar(15),lname varchar(15),ssn int(10),phone int(15),w_addr varchar(15),
city varchar(10),state varchar(10),zip int(10),start_date date,end_date date,primary key(writer_id));
select *from writer;
insert into writer values("w001","keer","ns",12354,13124354,"mysoreroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w002","aish","ns",12354,13124354,"kanakpuraroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w003","misba","ns",12354,13124354,"hosapetroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w004","archu","ns",12354,13124354,"circleroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w005","akshu","ns",12354,13124354,"dvjroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w006","sahana","ns",12354,13124354,"rjroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w007","fiza","ns",12354,13124354,"mysoreroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w008","bindu","ns",12354,13124354,"mysoreroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w009","anagha","ns",12354,13124354,"mysoreroad","mysore","ka",22345,"2022/3/6","2022/4/6");
insert into writer values("w010","chandhu","ns",12354,13124354,"mysoreroad","mysore","ka",22345,"2022/3/6","2022/4/6");




























