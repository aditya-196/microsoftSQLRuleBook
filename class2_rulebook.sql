-- Day 2, In this part we will cover all 6 Constraint Keys used in SQL.

 /* To declare a constraint in a table we have 2 methods -

 1) Query method
 Here we have to write the complete query for a perticular constraint.

 2) GUI method
 Here we can implement a constraint using the graphical method.*/


 --1. How to implement a Primary Key?


/* Primary key is used to represent a column which consist of all unique rows with no null values,
that is, a column which doesn't has duplicates and no null values can be implemented as a primary key.*/

 --While creating a table

create table <Table_name>
(
<Column_name_1> <Data_type_of_column_1> <not null or null> Primary key,
<Column_name_2> <Data_type_of_column_2> <not null or null>,
)

--Creating a primary key on an existing table

alter table <Table_name>
(
<Column_name_1> <Data_type_of_column_1> <not null or null> Primary key,
<Column_name_2> <Data_type_of_column_2> <not null or null>,
)


--2. How to implement Foreign Key Contraint?

/* Foreign key is implemented while joining to 2 tables.
It identifies the relationship between the foreign key of child table to the primary key of the parent table.*/

alter table <Table_name>
add constraint <name_of_the_foreign_key>
foreign key(<foreign_key_column_of_parent_table>)
references <child_table_name> (primary_key_column_of_parent_table>)


--3.How to implement Default Key Contraint?

/* Default key is used when we want to assign a column with a default value incase of old null values or missing data.
After implemending deafult constraint every null valued entered will be converted to the default value. */ 

alter table <Table_name>
add constraint <name_of_the_default_key>
default <default_value> for <column_name>

/*adding a new column with the help of default constraint*/

alter table <Table_name>
add <column_name> <data_type> null/not null
constraint <name_of_the_default_key>
default <value>


--4.How to implement Check Constraint?

/* Check constraint is used to specify a condition that every column should follow.
Basically we give what type of data can be entered in that column.*/

alter table <Table_name>
add constraint <name_of_the_check_constraint>
check(<column_name> <condition>)


--5.How to implement Unique Constraint?

/* Unique contraint is used to make a column unique but here 
unlike priamry key constraint, 1 null value can be included.*/

alter table <Table_name>
add constraint <name_of_the_unique_constraint>
unique(<column_name>)


--6.How to implement Not Null Constraint?

/* Not Null constraint when applied on a column then one cannot enter a null value in that column.*/

alter table <Table_name>
(
<Column_name_1> <Data_type_of_column_1> not null,
<Column_name_2> <Data_type_of_column_2> <not null or null>,
)
