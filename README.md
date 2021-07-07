# microsoftSQLRuleBook
Here I will be sharing all the syntax rules of clauses used in Microsoft SQL Server
--1.How to create a database?
create database <Databasename>

--2.How to rename and delete a database?

--Rename

/* Method 1 using alter clause */
alter database <original_database_name>
modify name = <new_database_name>

/* Method 2 using sp_rem=namedb */
execute sp_renamedb '<original_database_name>','<new_database_name>'

--Delete
drop database <write_database_name>

--3. How to create a table and insert values in it?

--Creating a Table
create table <Table_name>
(
<Column_name_1> <Data_type_of_column_1> <not null or null>,
<Column_name_2> <Data_type_of_column_2> <not null or null>,
)

--Inserting Values in the Table

/*Table created has 2 columns as created in upper query */
-/*If entered value is a string then we have to write it in inverted commas, in case of integers write normally*/

insert into <Table_name>
values (<value_1_as_per_datatype_of_column1>,<value_1_as_per_datatype_of_column2>),
(<value_2_as_per_datatype_of_column1>,<value_2_as_per_datatype_of_column2>)

--4. How do we delete,drop and truncate a table?

--Deleting a Table
delete table <table_name>

/*how to delete a specific value in a table using where clause*/

delete from <table_name>
where <column_name> = <value_corresponding_to_column_we_want_delete/value>

--Truncating a Table

truncate table <Table_name>

--Dropping a Table

drop table <Table_name>


--5.How to retrive data from a Table using SELECT clause?

/* Consider that the table has 2 columns - column1, column2 */

--select clause

select <column_1>, <column_2> from <table_name>

--6.How to retrive unique data using select distinct clause?

/* select distinct is used to remove duplicate values from the tables */

select distinct <column_1> from <table_name> 
/* Here table will return all the unique values from column_1*/


--7.How to retrive filtered data using select and where clause?

/* where clause is used to filter data*/
/* (select *) means we are retriving all the columns from the table*/


select * from <table_name>
where <column_name> = <value_corresponding_to_column_we_want_delete/value>

--we can filter data using 2 or more conditions.

select * from <table_name>
where <column_name_1> = <value_corresponding_to_column_we_want_delete/value> and <column_name_2> = <value_corresponding_to_column_we_want_delete/value>
/* here we can filter as per our requirment. We can use keywords like in, between, like, not like, and or etc to filter*/



--8. How to sort columns using orderby clause?

/* Data can be sorted in ascending(ASC) or Desending(DESC) order*/

 select * from <table_name>
 where <column_name_according_to_which_we_want_to_filter> = <Value> 
 order by <column_name_according_which_you_want_to_sort> <ASC/DESC>
 /* In case of ascending its not necessary to mention ASC, but in case of decending we have to mention DESC */


--9. How to retrive top N records from a table?
/* Here N is a random number as per user */

--When we need number of records, eg top 10 or top 20
select top <number> <*> from <table_name>

--When we need to retrive a percent of total records, eg top 1 percent or top 10 percent
/* if table has 1000 records and we use top 1 then we will retrive top 10 records*/

select top <number> <percent> <*> from <table_name>

--10.How to give comment in SQL?
  There are 2 ways we can give comments.

 1) --<content>
 --anything written after 2 Hifens will be considered as a comment
 
 2) /* <content */
 /* Anything written between ( /*......*/) will be considered as a comment. */

 --11. How to declare a variable?

 Declare @<variable_name> as <required_datatype_of_variable_name>

 --12. How to give value to a variable?

 set @<variable_name> = '<value>'

 --13. How to print variable a variable?

 print @<variable_name>
